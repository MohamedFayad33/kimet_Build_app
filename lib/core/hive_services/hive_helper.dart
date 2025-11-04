import 'dart:io';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:ouhda/core/hive_services/hive_names_boxes.dart';
import 'package:ouhda/feature/home/domain/entities/category_entity.dart';
import 'package:ouhda/feature/years/domin/entities/awhda_entity.dart';
import 'package:ouhda/feature/years/domin/entities/invoice_entity.dart';
import 'package:ouhda/feature/years/domin/entities/month_entity.dart';
import 'package:path_provider/path_provider.dart';

abstract class HiveHelper {
  static Future<void> setUp() async {
    Directory dir = await getApplicationDocumentsDirectory();
    await Hive.initFlutter(dir.path);

    Hive.registerAdapter(CategoryEntityAdapter());
    Hive.registerAdapter(MonthEntityAdapter());
    Hive.registerAdapter(InvoiceEntityAdapter());
    Hive.registerAdapter(AwhdaEntityAdapter());

    await Hive.openBox<CategoryEntity>(HiveNamesBoxes.categories);
  }
}
