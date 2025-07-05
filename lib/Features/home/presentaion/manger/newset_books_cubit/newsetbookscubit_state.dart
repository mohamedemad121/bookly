part of 'newsetbookscubit_cubit.dart';

@immutable
sealed class NewsetbookscubitState {}

final class NewsetbookscubitInitial extends NewsetbookscubitState {}

final class NewsetbookscubitLoading extends NewsetbookscubitState {}

final class NewsetbookscubitSuccses extends NewsetbookscubitState {
  final List<Bookmodel> books;

  NewsetbookscubitSuccses(this.books);
}

final class NewsetbookscubitFailure extends NewsetbookscubitState {
  final String errMessege;

  NewsetbookscubitFailure(this.errMessege);
}
