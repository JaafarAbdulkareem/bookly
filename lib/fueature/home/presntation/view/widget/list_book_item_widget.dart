import 'package:bookly/fueature/home/domain/entities/home_entity.dart';
import 'package:bookly/fueature/home/presntation/view/widget/play_button_widget.dart';
import 'package:bookly/core/share/book_item_widget.dart';
import 'package:flutter/material.dart';

class ListBookItemWidget extends StatelessWidget {
  const ListBookItemWidget({super.key, required this.books});
  final List<HomeEntity> books;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 50,
      ),
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.3,
        child: ListView.builder(
          itemCount: books.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => AspectRatio(
            aspectRatio: 0.6,
            child: BookItemWidget(
              image: books[index].image ?? '',
              playButton: const PlayButtonWidget(),
            ),
          ),
        ),
      ),
    );
  }
}
