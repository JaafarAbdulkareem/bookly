import 'package:bookly/core/utils/color_app.dart';
import 'package:bookly/core/utils/icon_app.dart';
import 'package:bookly/core/utils/scale_app.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

class RateBookWidget extends StatelessWidget {
  const RateBookWidget({super.key, required this.rate});
  final num rate;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          IconApp.star,
          color: ColorApp.star,
          size: HomeScale.starIcon,
        ),
        const SizedBox(width: 6),
        Text(
          rate.toString(),
          style: Style.textStyle16,
        ),
        const SizedBox(width: 6),
        // Text(
        //   '(2390)',
        //   style: Style.textStyle14.copyWith(
        //     color: TextColorApp.peopleRate,
        //   ),
        // ),
      ],
    );
  }
}
