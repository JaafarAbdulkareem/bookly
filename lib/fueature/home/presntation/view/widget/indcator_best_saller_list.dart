import 'package:bookly/core/share/custom_fading_widget.dart';
import 'package:bookly/core/utils/color_app.dart';
import 'package:bookly/core/utils/scale_app.dart';
import 'package:bookly/fueature/home/presntation/view/widget/indcator_image_item.dart';
import 'package:flutter/material.dart';

class IndcatorBestSallerList extends StatelessWidget {
  const IndcatorBestSallerList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) => CustomFadingWidget(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.2,
            child: Row(
              children: [
                const AspectRatio(
                  aspectRatio: 2.5 / 4,
                  child: IndcatorImageItem(),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(HomeScale.itemBookBorder),
                      color: ColorApp.fading,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
