import 'package:bookly/core/utils/style.dart';
import 'package:bookly/fueature/home/presntation/manage/home_book_detail/home_book_detail_cubit.dart';
import 'package:bookly/fueature/home/presntation/view/widget/cover_book_detail.dart';
import 'package:bookly/core/share/rate_book_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HeadBookDetail extends StatelessWidget {
  const HeadBookDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CoverBookDetail(),
        const SizedBox(height: 30),
        Text(
          BlocProvider.of<HomeBookDetailCubit>(context).book.bookName,
          style: Style.textStyle30,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            BlocProvider.of<HomeBookDetailCubit>(context).book.authName ?? "",
            style: Style.textStyle16.copyWith(
              fontWeight: FontWeight.bold,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(height: 10),
        RateBookWidget(
          rate: BlocProvider.of<HomeBookDetailCubit>(context).book.rate ?? 0,
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
