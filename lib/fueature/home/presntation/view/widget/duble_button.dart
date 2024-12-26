import 'package:bookly/core/extension_language.dart';
import 'package:bookly/core/share/custom_button_widget.dart';
import 'package:bookly/core/utils/color_app.dart';
import 'package:bookly/core/utils/language_keys.dart';
import 'package:bookly/core/utils/scale_app.dart';
import 'package:bookly/fueature/home/presntation/manage/book_detail/book_detail_cubit.dart';
import 'package:bookly/fueature/home/presntation/manage/launch_http/launch_http_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoubleButton extends StatelessWidget {
  const DoubleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomButtonWidget(
          text:
              "${BlocProvider.of<BookDetailCubit>(context).book.pageNumber} ${LanguageKeys.page.tr(context)}",
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(BookDetailScale.raduis),
            bottomLeft: Radius.circular(BookDetailScale.raduis),
          ),
        ),
        CustomButtonWidget(
          text: LanguageKeys.freePreview.tr(context),
          textSize: 14,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(BookDetailScale.raduis),
            bottomRight: Radius.circular(BookDetailScale.raduis),
          ),
          color: TextColorApp.buttonColors,
          backgroundcolor: ColorApp.buttonOrange,
          onPressed: () async {
            BlocProvider.of<LaunchHttpCubit>(context).launchHttp(
              BlocProvider.of<BookDetailCubit>(context).book.previewLink ?? "",
            );
          },
        ),
      ],
    );
  }
}
