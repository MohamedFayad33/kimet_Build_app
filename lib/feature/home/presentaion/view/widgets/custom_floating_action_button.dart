import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ouhda/feature/home/domain/entities/category_entity.dart';
import 'package:ouhda/feature/home/presentaion/manger/bloc/category_bloc.dart';
import 'package:ouhda/feature/home/presentaion/view/widgets/custom_selected_color.dart';

class CustomFloatingActionButton extends StatefulWidget {
  const CustomFloatingActionButton({super.key});

  @override
  State<CustomFloatingActionButton> createState() =>
      _CustomFloatingActionButtonState();
}

class _CustomFloatingActionButtonState
    extends State<CustomFloatingActionButton> {
  late TextEditingController titleController;
  int colorIndex = 0;

  List<int> colors = const [
    0xff131314,
    0xffcdb4db,
    0xff335c67,
    0xff264653,
    0xff00b4d8,
    0xff3a86ff,
    0xffbb9457,
    0xffb0c4b1,
    0xff778da9,
  ];

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    titleController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    CategoryBloc bloc = BlocProvider.of<CategoryBloc>(context);
    return FloatingActionButton(
      onPressed: () async {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            insetPadding: EdgeInsets.symmetric(vertical: 300),
            content: Column(
              children: [
                TextField(
                  controller: titleController,
                  decoration: InputDecoration(
                    hintText: 'Title',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                StatefulBuilder(
                  builder: (context, setState) => Wrap(
                    spacing: 5,
                    runSpacing: 5,
                    children: colors.asMap().entries.map((color) {
                      int key = color.key;
                      int value = color.value;
                      return GestureDetector(
                        onTap: () {
                          colorIndex = key;
                          setState(() {});
                        },
                        child: CustomSelectedColor(
                          indexColor: colorIndex,
                          keyColor: key,
                          value: value,
                        ),
                      );
                    }).toList(),
                  ),
                ),
                const Spacer(),
                _onSave(context, bloc),
              ],
            ),
          ),
        );
      },
      child: Icon(Icons.add),
    );
  }

  ElevatedButton _onSave(BuildContext context, CategoryBloc bloc) {
    return ElevatedButton(
      onPressed: () async {
        CategoryEntity category = CategoryEntity(
          title: titleController.text,
          color: colors[colorIndex],
          years: [],
        );
        bloc.add(SaveCategoryEvent(category: category));
        titleController.clear();
        Navigator.of(context).pop();
      },
      child: Text('Save'),
    );
  }
}
