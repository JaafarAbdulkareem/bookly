import 'package:bookly/core/extension_language.dart';
import 'package:bookly/core/utils/language_keys.dart';
import 'package:flutter/material.dart';

class SlideText extends StatelessWidget {
  const SlideText({
    super.key,
    required this.slideAnimation,
  });

  final Animation<Offset> slideAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slideAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slideAnimation,
            child: Text(
              LanguageKeys.textSplash.tr(context),
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
