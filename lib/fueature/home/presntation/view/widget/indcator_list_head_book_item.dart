import 'package:bookly/core/share/custom_fading_widget.dart';
import 'package:bookly/core/utils/scale_app.dart';
import 'package:flutter/material.dart';

class IndcatorListHeadBookItem extends StatelessWidget {
  const IndcatorListHeadBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadingWidget(
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: 50,
        ),
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.3,
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => AspectRatio(
                aspectRatio: 0.6,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        HomeScale.itemBookBorder,
                      ),
                      color: Colors.grey,
                    ),
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
