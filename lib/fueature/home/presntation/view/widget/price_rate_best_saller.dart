import 'package:bookly/core/utils/style.dart';
import 'package:bookly/core/share/rate_book_widget.dart';
import 'package:flutter/material.dart';

class PriceRateBestSaller extends StatelessWidget {
  const PriceRateBestSaller({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          r"19.99 $",
          style: Style.textStyle20.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const RateBookWidget()
      ],
    );
  }
}
