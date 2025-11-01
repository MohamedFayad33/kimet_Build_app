import 'dart:math';
import 'package:hive/hive.dart';
part 'category_entity.g.dart';

// @HiveType(typeId: 0)
// class CategoryEntity extends HiveObject {
//   @HiveField(0)
//   late int id;
//   @HiveField(1)
//   final String title;
//   @HiveField(2)
//   final int color;
//   @HiveField(3)
//   List<String> years;

//   CategoryEntity({
//     required this.title,
//     required this.color,
//     List<String> years = [],
//   }) {
//     this.years = years ?? [];
//     id = Random().nextInt(10000000);
//   }
// }

@HiveType(typeId: 0)
class CategoryEntity extends HiveObject {
  @HiveField(0)
  late int id;

  @HiveField(1)
  final String title;

  @HiveField(2)
  final int color;

  @HiveField(3)
  List<String> years;

  CategoryEntity({
    required this.title,
    required this.color,
    List<String>? years,
  }) : years = years ?? [] {
    id = Random().nextInt(10000000);
  }
}
