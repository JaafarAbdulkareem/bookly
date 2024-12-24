import 'package:bookly/core/utils/color_app.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    super.key,
    required this.text,
    this.textSize,
    this.color = TextColorApp.buttonDefault,
    this.backgroundcolor = ColorApp.buttonDefault,
    this.borderRadius,
  });
  final String text;
  final double? textSize;
  final Color color;
  final Color backgroundcolor;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: backgroundcolor,
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.zero)),
        onPressed: () {},
        child: Text(
          text,
          style: Style.textStyle16.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: textSize,
            color: color,
          ),
        ),
      ),
    );
  }
}
