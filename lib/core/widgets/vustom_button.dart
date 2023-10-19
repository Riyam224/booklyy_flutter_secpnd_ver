import 'package:booklyy/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.bgcolor,
      required this.textColor,
      this.borderRadius,
      required this.text});
  final Color bgcolor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: bgcolor,
              shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(16),
              )),
          child: Text(text,
              style: Styles.textStyle18.copyWith(
                color: textColor,
                fontWeight: FontWeight.bold,
              ))),
    );
  }
}
