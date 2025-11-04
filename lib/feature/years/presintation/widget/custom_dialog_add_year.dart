import 'package:flutter/material.dart';
import 'package:ouhda/feature/years/presintation/widget/custom_text_form_field.dart';

class OnAdd extends StatelessWidget {
  const OnAdd({super.key, required this.onTap});
  final Function(String year) onTap;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext ctx) {
            return AlertDialog(content: CustomTextFormField(onTap: onTap));
          },
        );
      },
    );
  }
}
