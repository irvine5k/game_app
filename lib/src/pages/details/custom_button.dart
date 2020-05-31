import 'package:division/division.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;

  const CustomButton({
    Key key,
    this.onTap,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Parent(
      gesture: Gestures()..onTap(onTap),
      style: ParentStyle()
        ..borderRadius(all: 40)
        ..width(double.maxFinite)
        ..padding(vertical: 12)
        ..margin(vertical: 16, horizontal: 16)
        ..ripple(true)
        ..alignmentContent.center()
        ..linearGradient(
            colors: [Color(0xff7067E0), Color(0xff5148D8)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
