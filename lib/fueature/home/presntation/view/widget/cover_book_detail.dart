import 'package:bookly/core/share/book_item_widget.dart';
import 'package:bookly/fueature/home/presntation/manage/book_detail/book_detail_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoverBookDetail extends StatelessWidget {
  const CoverBookDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.3,
      child: AspectRatio(
        aspectRatio: 4.5 / 6,
        child: BookItemWidget(
          image: BlocProvider.of<BookDetailCubit>(context).book.image ?? "",
        ),
      ),
    );
  }
}
