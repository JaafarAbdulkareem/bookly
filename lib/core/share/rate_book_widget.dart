import 'package:bookly/core/utils/color_app.dart';
import 'package:bookly/core/utils/icon_app.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

class RateBookWidget extends StatelessWidget {
  const RateBookWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          IconApp.star,
          color: ColorApp.star,
          size: 12.8,
        ),
        const SizedBox(width: 6),
        const Text(
          '4.8',
          style: Style.textStyle16,
        ),
        const SizedBox(width: 6),
        Text(
          '(2390)',
          style: Style.textStyle14.copyWith(
            color: TextColorApp.peopleRate,
          ),
        ),
      ],
    );
  }
}
