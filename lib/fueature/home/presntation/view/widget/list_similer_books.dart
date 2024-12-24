import 'package:bookly/core/share/book_item_widget.dart';
import 'package:flutter/material.dart';

class ListSimilerBooks extends StatelessWidget {
  const ListSimilerBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.12,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const AspectRatio(
          aspectRatio: 0.7,
          child: BookItemWidget(),
        ),
      ),
    );
  }
}
