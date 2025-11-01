import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ouhda/feature/home/presentaion/manger/bloc/category_bloc.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({super.key, required this.index});
  final int index;

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
          TextFormField(
            controller: _controller,
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value!.isEmpty) {
                return 'where is the value ??';
              }
              return null;
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          const SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              _onSave(_controller.text, widget.index);
            },
            child: Text('Save'),
          ),
        ],
      ),
    );
  }

  void _onSave(String year, int index) {
    if (_key.currentState!.validate()) {
      var x = BlocProvider.of<CategoryBloc>(context);
      x.add(AddYearEvent(index: index, year: year));
      Navigator.of(context).pop();
    }
  }
}
