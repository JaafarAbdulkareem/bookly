import 'package:bookly/core/utils/scale_app.dart';
import 'package:flutter/material.dart';

class IndcatorImageItem extends StatelessWidget {
  const IndcatorImageItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            HomeScale.itemBookBorder,
          ),
          color: Colors.grey,
        ),
      ),
    );
  }
}
