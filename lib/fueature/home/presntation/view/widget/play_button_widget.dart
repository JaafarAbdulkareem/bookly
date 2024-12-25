import 'dart:ui';

import 'package:bookly/core/function/lanch_url_method.dart';
import 'package:bookly/core/utils/color_app.dart';
import 'package:bookly/core/utils/icon_app.dart';
import 'package:bookly/core/utils/scale_app.dart';
import 'package:flutter/material.dart';

class PlayButtonWidget extends StatelessWidget {
  const PlayButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Align(
        alignment: Alignment.bottomRight,
        child: ClipOval(
          child: InkWell(
            onTap: () async {
              await lanchUrlMethod(
                context,'https://google.com'
              );
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
          ),
        ),
      ),
    );
  }
}
