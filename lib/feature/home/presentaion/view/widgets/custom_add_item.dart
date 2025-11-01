import 'package:flutter/material.dart';
import 'package:ouhda/feature/home/domain/entities/category_entity.dart';

class CustomAddItem extends StatelessWidget {
  final CategoryEntity category;
  const CustomAddItem(this.category, {super.key, required this.onTap});
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        color: Color(category.color),
        child: ListTile(
          title: Center(
            child: Text(
              category.title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
