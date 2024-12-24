import 'package:bookly/fueature/home/presntation/view/widget/body_book_detail_view.dart';
import 'package:flutter/material.dart';

class BookDetailView extends StatelessWidget {
  const BookDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: BodyBookDetailView(),
      ),
    );
  }
}
