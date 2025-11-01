import 'dart:math';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:ouhda/feature/years/domin/entities/awhda_entity.dart';
import 'package:ouhda/feature/years/domin/entities/invoice_entity.dart';
part 'month_entity.g.dart';

@HiveType(typeId: 1)
class MonthEntity extends HiveObject {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String month;
  @HiveField(2)
  final List<AwhdaEntity>? awhdas;
  @HiveField(3)
  final List<InvoiceEntity>? invices;

  MonthEntity({required this.month, this.awhdas, this.invices})
    : id = Random().nextInt(10000000);
}
