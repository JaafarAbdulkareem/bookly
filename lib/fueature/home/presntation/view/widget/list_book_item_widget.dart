import 'package:bookly/fueature/home/domain/entities/home_entity.dart';
import 'package:bookly/fueature/home/presntation/view/widget/play_button_widget.dart';
import 'package:bookly/core/share/book_item_widget.dart';
import 'package:flutter/material.dart';

class ListBookItemWidget extends StatefulWidget {
  const ListBookItemWidget({super.key, required this.books});
  final List<HomeEntity> books;

  @override
  State<ListBookItemWidget> createState() => _ListBookItemWidgetState();
}

class _ListBookItemWidgetState extends State<ListBookItemWidget> {
  late ScrollController _scrollController;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 50,
      ),
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.3,
        child: ListView.builder(
          itemCount: widget.books.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => AspectRatio(
            aspectRatio: 0.6,
            child: BookItemWidget(
              image: widget.books[index].image ?? '',
              playButton: const PlayButtonWidget(),
            ),
          ),
        ),
      ),
    );
  }
}
