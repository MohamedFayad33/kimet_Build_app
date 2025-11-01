import 'package:ouhda/core/hive_services/hive_names_boxes.dart';
import 'package:ouhda/feature/home/domain/entities/category_entity.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class HomeLocalDataSouce {
  List<CategoryEntity> myCatogory();
}

class HomeLocalDataSouceImp implements HomeLocalDataSouce {
  @override
  List<CategoryEntity> myCatogory() {
    return Hive.box<CategoryEntity>(HiveNamesBoxes.categories).values.toList();
  }
}
