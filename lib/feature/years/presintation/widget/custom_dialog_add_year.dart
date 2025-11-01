import 'package:flutter/material.dart';
import 'package:ouhda/feature/years/presintation/widget/custom_text_form_field.dart';

class OnAdd extends StatelessWidget {
  const OnAdd({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(content: CustomTextFormField(index: index));
          },
        );
      },
    );
  }
}
