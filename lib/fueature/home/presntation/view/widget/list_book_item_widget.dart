import 'package:bookly/fueature/home/presntation/view/widget/play_button_widget.dart';
import 'package:bookly/core/share/book_item_widget.dart';
import 'package:flutter/material.dart';

class ListBookItemWidget extends StatelessWidget {
  const ListBookItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 50,
      ),
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.3,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const AspectRatio(
            aspectRatio: 0.6,
            child: BookItemWidget(
              playButton: PlayButtonWidget(),
            ),
          ),
        ),
      ),
    );
  }
}
