//repostory pattern
//بححد فيه الميثود الي بيتم تنفيزها
//بيخليني اقولل featuers دس هتعمل ايه
//لكن مش هتعمله ازاي

import 'package:bookley/Features/home/data/models/bookmodel/bookmodel.dart';
import 'package:bookley/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failures, List<Bookmodel>>> fetchNewsetBooks();
  Future<Either<Failures, List<Bookmodel>>> fetchFeaturesBook();
}

//dartz
