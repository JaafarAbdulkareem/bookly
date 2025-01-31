import 'dart:ui';

import 'package:bookly/core/function/lanch_url_method.dart';
import 'package:bookly/core/utils/color_app.dart';
import 'package:bookly/core/utils/icon_app.dart';
import 'package:bookly/core/utils/scale_app.dart';
import 'package:flutter/material.dart';

class PlayButtonWidget extends StatelessWidget {
  const PlayButtonWidget({
    super.key,
    required this.previewLink,
  });

  final String previewLink;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await lanchUrlMethod(context, previewLink);
      },
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: HomeScale.blur,
          sigmaY: HomeScale.blur,
        ),
        child: CircleAvatar(
          radius: MediaQuery.sizeOf(context).height * 0.019,
          backgroundColor: ColorApp.playBackground,
          child: const Icon(
            IconApp.play,
            size: HomeScale.playicon,
          ),
        ),
      ),
    );
  }
}
