import 'package:flutter/material.dart';

class ShowYear extends StatelessWidget {
  const ShowYear({super.key, required this.year});
  final String year;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        color: Colors.blue,
        child: ListTile(
          title: Center(child: Text(year, style: TextStyle(fontSize: 24))),
          textColor: Colors.white,
        ),
      ),
    );
  }
}
