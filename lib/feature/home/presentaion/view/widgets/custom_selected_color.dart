import 'package:flutter/material.dart';

class CustomSelectedColor extends StatefulWidget {
  const CustomSelectedColor({
    super.key,
    required this.keyColor,
    required this.value,
    required this.indexColor,
  });
  final int keyColor;
  final int value;
  final int indexColor;

  @override
  State<CustomSelectedColor> createState() => _CustomSelectedColorState();
}

class _CustomSelectedColorState extends State<CustomSelectedColor> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 30,
          height: 30,
          margin: EdgeInsets.all(4),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(50),
            ),
            color: Color(widget.value),
          ),
        ),
        widget.indexColor == widget.keyColor
            ? Container(
                width: 37,
                height: 37,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(30),
                    side: BorderSide(width: 4, color: Colors.yellowAccent),
                  ),
                ),
              )
            : SizedBox(),
      ],
    );
  }
}
