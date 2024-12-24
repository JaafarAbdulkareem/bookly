import 'package:bookly/core/utils/style.dart';
import 'package:bookly/fueature/home/presntation/view/widget/cover_book_detail.dart';
import 'package:bookly/core/share/rate_book_widget.dart';
import 'package:flutter/material.dart';

class HeadBookDetail extends StatelessWidget {
  const HeadBookDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CoverBookDetail(),
        const SizedBox(height: 30),
        const Text(
          'The Jungle Book',
          style: Style.textStyle30,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: Style.textStyle16.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 10),
        const RateBookWidget(),
        const SizedBox(height: 30),
      ],
    );
  }
}
