import 'package:bookly/core/utils/image_app.dart';
import 'package:bookly/core/utils/scale_app.dart';
import 'package:flutter/material.dart';

class BookItemWidget extends StatelessWidget {
  const BookItemWidget({
    super.key,
    this.playButton,
  });
  final Widget? playButton;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            HomeScale.itemBookBorder,
          ),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              ImageApp.book1,
            ),
          ),
        ),
        child: playButton ?? const SizedBox(),
      ),
    );
  }
}
