import 'package:dartz/dartz.dart';
import 'package:ouhda/core/constant/faulier.dart';

abstract class YearRepo {
  Either<Faulier, Future<void>> addYears({
    required String newYear,
    required int id,
  });
}
