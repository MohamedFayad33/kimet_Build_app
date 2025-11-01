import 'package:dartz/dartz.dart';
import 'package:ouhda/core/constant/faulier.dart';
import 'package:ouhda/feature/home/domain/entities/category_entity.dart';

abstract class HomeRepository {
  Either<Faulier, List<CategoryEntity>> myCatogry();
}
