import 'package:dartz/dartz.dart';
import 'package:ouhda/core/constant/faulier.dart';
import 'package:ouhda/feature/home/data/data_source/home_local_data_souce.dart';
import 'package:ouhda/feature/home/domain/entities/category_entity.dart';
import 'package:ouhda/feature/home/domain/repositories/home_repository.dart';

class HomeRepositoryImp implements HomeRepository {
  final HomeLocalDataSouce homeLocalDataSouce;

  HomeRepositoryImp({required this.homeLocalDataSouce});
  @override
  Either<Faulier, List<CategoryEntity>> myCatogry() {
    try {
      List<CategoryEntity> myCategory = homeLocalDataSouce.myCatogory();
      return right(myCategory);
    } catch (e) {
      return left(Faulier(e.toString()));
    }
  }
}
