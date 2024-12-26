import 'package:bookly/core/share/custom_fading_widget.dart';
import 'package:bookly/fueature/home/presntation/view/widget/indcator_image_item.dart';
import 'package:flutter/material.dart';

class IndecatorListSimilerBook extends StatelessWidget {
  const IndecatorListSimilerBook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomFadingWidget(
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.12,
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => const AspectRatio(
            aspectRatio: 0.7,
            child: IndcatorImageItem(),
          ),
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
