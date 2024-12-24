import 'package:bookly/core/utils/color_app.dart';
import 'package:flutter/material.dart';

class CustomProgressIndicatorWidget extends StatelessWidget {
  const CustomProgressIndicatorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.04,
        child: const AspectRatio(
          aspectRatio: 1,
          child: CircularProgressIndicator(
            backgroundColor: ColorApp.error,
            color: ColorApp.progressIndicator,
          ),
        ),
      ),
    );
  }
}
