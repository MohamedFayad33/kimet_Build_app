import 'package:dartz/dartz.dart';
import 'package:ouhda/core/constant/faulier.dart';
import 'package:ouhda/feature/years/domin/entities/month_entity.dart';

abstract class YearRepo {
  Future<Either<Faulier, List<MonthEntity>>> addYears({
    required String newYear,
    required int id,
  });
}
