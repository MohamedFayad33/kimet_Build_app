import 'package:hive/hive.dart';
import 'package:ouhda/core/constant/constants.dart';
import 'package:ouhda/core/hive_services/hive_names_boxes.dart';
import 'package:ouhda/feature/home/domain/entities/category_entity.dart';
import 'package:ouhda/feature/years/domin/entities/month_entity.dart';

class YearLocalDataSource {
  Future<void> addBox(String newYear, int id) async {
    final box = Hive.box<CategoryEntity>(HiveNamesBoxes.categories);
    final item = box.get(id);
    if (item != null) {
      item.years.add(newYear);
      await item.save();
    }
    await Hive.openBox<MonthEntity>('$newYear${id.toString()}');
    Box<MonthEntity> x = Hive.box<MonthEntity>('$newYear${id.toString()}');
    x.add(MonthEntity(month: 'hello'));
    for (var month in months) {
      await x.add(MonthEntity(month: month));
    }
  }

  Future<List<MonthEntity>> getMonth(String id) async {
    if (Hive.isBoxOpen(id)) {
    } else if (!Hive.isBoxOpen(id)) {
      await Hive.openBox<MonthEntity>(id);
    }

    Box<MonthEntity> month = Hive.box<MonthEntity>(id);
    return month.values.toList();
  }
}
