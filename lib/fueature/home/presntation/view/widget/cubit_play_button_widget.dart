import 'package:bookly/core/extension_language.dart';
import 'package:bookly/core/function/flashbar.dart';
import 'package:bookly/core/share/custom_progress_indcator_widget.dart';
import 'package:bookly/core/utils/language_keys.dart';
import 'package:bookly/fueature/home/presntation/manage/launch_http/launch_http_cubit.dart';
import 'package:bookly/fueature/home/presntation/manage/launch_http/launch_http_state.dart';
import 'package:bookly/fueature/home/presntation/view/widget/play_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitPlayButtonWidget extends StatelessWidget {
  const CubitPlayButtonWidget({
    super.key,
    required this.previewLink,
  });
  final String previewLink;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Align(
        alignment: Alignment.bottomRight,
        child: ClipOval(
          child: BlocConsumer<LaunchHttpCubit, LaunchHttpState>(
            listener: (context, state) {
              if (state is LaunchHttpFailure) {
                flashBar(
                  title: LanguageKeys.alert.tr(context),
                  message: LanguageKeys.launchError.tr(context) +
                      state.errorMessage.toString(),
                ).show(context);
              }
            },
            builder: (context, state) {
              if (state is LaunchHttpLoading) {
                return const SizedBox(
                  height: 20,
                  width: 20,
                  child: CustomProgressIndicatorWidget(),
                );
              }
              return PlayButtonWidget(previewLink: previewLink);
            },
          ),
        ),
      ),
    );
  }
}
