import 'package:bookly/core/function/hive_register.dart';
import 'package:bookly/core/function/setup_get_it_local.dart';
import 'package:bookly/core/route.dart';
import 'package:bookly/core/simple_bloc_obervator.dart';
import 'package:bookly/core/utils/localizations_delegates.dart';
import 'package:bookly/core/utils/color_app.dart';
import 'package:bookly/core/utils/lang_constant.dart';
import 'package:bookly/fueature/home/presntation/manage/home_book_detail/home_book_detail_cubit.dart';
import 'package:bookly/fueature/home/presntation/manage/launch_http/launch_http_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_fonts/google_fonts.dart';

void main() async {
  await hiveRegister();
  Bloc.observer = SimpleBlocObervator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});
  @override
  Widget build(BuildContext context) {
    setupHome(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => HomeBookDetailCubit()),
        BlocProvider(create: (context) => LaunchHttpCubit()),
      ],
      child: MaterialApp.router(
        routerConfig: RouteApp.router,
        debugShowCheckedModeBanner: false,
        title: 'Bookly app',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: ColorApp.scaffoldBackground,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
        // home: const SplashView(),
        localizationsDelegates: localizationsDelegates,
        supportedLocales: _supportedLocales,
        localeResolutionCallback: _localResolution,
      ),
    );
  }

  Locale? _localResolution(deviceLocale, supportedLocales) {
    for (Locale locale in supportedLocales) {
      if (deviceLocale != null &&
          deviceLocale.languageCode == locale.languageCode) {
        return deviceLocale;
      }
    }
    return supportedLocales.first;
  }

  List<Locale> get _supportedLocales {
    List<Locale> localesLanguage = [];
    for (String element in ConstantLang.langs) {
      localesLanguage.add(Locale(element));
    }
    return localesLanguage;
  }
}
