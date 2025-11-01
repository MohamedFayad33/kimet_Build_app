import 'package:hive_flutter/hive_flutter.dart';
part 'invoice_entity.g.dart';

@HiveType(typeId: 3)
class InvoiceEntity extends HiveObject {
  @HiveField(0)
  final String? id;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final double price;
  @HiveField(3)
  final String location;
  @HiveField(4)
  final DateTime date;
  @HiveField(5)
  final String notes;

  InvoiceEntity({
    this.id,
    required this.title,
    required this.price,
    required this.location,
    required this.notes,
  }) : date = DateTime.now();
}
