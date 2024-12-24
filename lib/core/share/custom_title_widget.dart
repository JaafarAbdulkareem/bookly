import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomTitleWidget extends StatelessWidget {
  const CustomTitleWidget({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 18,
      ),
      child: Text(
        text,
        style: Style.textStyle18,
      ),
    );
  }
}
