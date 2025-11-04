import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({super.key, required this.onTap});
  final Function(String year) onTap;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  final _key = GlobalKey<FormState>();
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _key,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          customWidgetTextFormField(),
          const SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              _onSave(_controller.text);
            },
            child: Text('Save'),
          ),
        ],
      ),
    );
  }

  TextFormField customWidgetTextFormField() {
    return TextFormField(
      controller: _controller,
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value!.isEmpty) {
          return 'where is the value ??';
        }
        return null;
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }

  void _onSave(String year) {
    if (_key.currentState!.validate()) {
      widget.onTap(year);
      Navigator.of(context).pop();
    }
  }
}
