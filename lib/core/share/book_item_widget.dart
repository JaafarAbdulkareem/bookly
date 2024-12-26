import 'package:bookly/core/share/custom_progress_indcator_widget.dart';
import 'package:bookly/core/utils/icon_app.dart';
import 'package:bookly/core/utils/scale_app.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookItemWidget extends StatelessWidget {
  const BookItemWidget({
    super.key,
    this.playButton,
    required this.image ,
  });
  final String image;
  final Widget? playButton;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: CachedNetworkImage(
        imageUrl: image,
        imageBuilder: (context, imageProvider) => Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              HomeScale.itemBookBorder,
            ),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                image,
              ),
            ),
          ),
          child: playButton ?? const SizedBox(),
        ),
        placeholder: (context, url) => const CustomProgressIndicatorWidget(),
        errorListener: (value) {
          return;
        },
        errorWidget: (context, url, error) => const FittedBox(
          fit: BoxFit.contain,
          child: Icon(
            IconApp.image,
          ),
        ),
      ),
    );
  }
}
