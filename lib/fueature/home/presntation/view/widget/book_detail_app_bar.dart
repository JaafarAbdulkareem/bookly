import 'package:bookly/core/utils/icon_app.dart';
import 'package:flutter/material.dart';

class BookDetailAppBar extends StatelessWidget {
  const BookDetailAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(IconApp.close),
        ),
        // IconButton(
        //   onPressed: () {},
        //   icon: const Icon(IconApp.cart),
        // ),
      ],
    );
  }
}
