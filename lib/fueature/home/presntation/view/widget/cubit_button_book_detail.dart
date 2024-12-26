import 'package:bookly/core/extension_language.dart';
import 'package:bookly/core/function/flashbar.dart';
import 'package:bookly/core/utils/language_keys.dart';
import 'package:bookly/fueature/home/presntation/manage/launch_http/launch_http_cubit.dart';
import 'package:bookly/fueature/home/presntation/manage/launch_http/launch_http_state.dart';
import 'package:bookly/fueature/home/presntation/view/widget/duble_button.dart';
import 'package:bookly/fueature/home/presntation/view/widget/indicator_double_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitButtonBookDetail extends StatelessWidget {
  const CubitButtonBookDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LaunchHttpCubit, LaunchHttpState>(
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
          return const IndicatorDoubleButton();
        }
        return const DoubleButton();
      },
    );
  }
}
