import 'package:dio/dio.dart';

abstract class Failures {
  final String errMessege;

  const Failures(this.errMessege);
}

class ServerFailures extends Failures {
  ServerFailures(super.erroeMessege);
  factory ServerFailures.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailures('Connection time out with api server');

      case DioExceptionType.sendTimeout:
        return ServerFailures('Send time out with api server');

      case DioExceptionType.receiveTimeout:
        return ServerFailures('recive time out with api server');
      case DioExceptionType.badCertificate:
        return ServerFailures('request with api server was canceld');

      case DioExceptionType.badResponse:
        return ServerFailures.fromResponse(
          dioError.response!.statusCode!,
          dioError.response!.data,
        );

      case DioExceptionType.cancel:
        return ServerFailures('request with api server was canceld');

      case DioExceptionType.connectionError:
        return ServerFailures('request with api server was canceld');
      case DioExceptionType.unknown:
        if (dioError.message!.contains('socked exption')) {
          return ServerFailures('no internet connection');
        }
        return ServerFailures('un expected error, try later');
      default:
        return ServerFailures(
          'oops there was an error , please try later agin',
        );
    }
  }
  factory ServerFailures.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailures(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailures('your request not found ,please try later');
    } else if (statusCode == 500) {
      return ServerFailures('internal sever error, please try agin later');
    } else {
      return ServerFailures('oops there was an error , please try later agin');
    }
  }
}
