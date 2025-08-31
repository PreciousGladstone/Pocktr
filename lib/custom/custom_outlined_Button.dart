import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
    super.key,
    required this.outlineText,
    required this.outlineTap,
    required this.fontWeight,
    required this.fontSize,
  });

  final String outlineText;
  final VoidCallback outlineTap;
  final FontWeight fontWeight;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: outlineTap,
      style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 0,
          padding: EdgeInsets.zero),
      child: Text(outlineText,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
          )),
    );
  }
}
