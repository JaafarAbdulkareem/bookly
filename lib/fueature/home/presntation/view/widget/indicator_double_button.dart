import 'package:bookly/core/share/custom_progress_indcator_widget.dart';
import 'package:flutter/material.dart';

class IndicatorDoubleButton extends StatelessWidget {
  const IndicatorDoubleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: const CustomProgressIndicatorWidget(),
      ),
    );
  }
}
