import 'package:bookly/core/share/book_item_widget.dart';
import 'package:flutter/material.dart';

class CoverBookDetail extends StatelessWidget {
  const CoverBookDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.3,
      child: const AspectRatio(
        aspectRatio: 4.5 / 6,
        child: BookItemWidget(),
      ),
    );
  }
}
