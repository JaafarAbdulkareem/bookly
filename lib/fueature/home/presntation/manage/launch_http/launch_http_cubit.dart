import 'package:bookly/core/utils/language_keys.dart';
import 'package:bookly/fueature/home/presntation/manage/launch_http/launch_http_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

class LaunchHttpCubit extends Cubit<LaunchHttpState> {
  LaunchHttpCubit() : super(LaunchHttpInitial());

  Future<void> launchHttp(String urlPath) async {
    final Uri url = Uri.parse(urlPath);
    emit(LaunchHttpLoading());
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
      emit(LaunchHttpSuccess());
    } else {
      emit(LaunchHttpFailure(errorMessage: LanguageKeys.launchError));
    }
  }
}
