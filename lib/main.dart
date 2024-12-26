import 'package:bookly/core/function/setup_get_it_local.dart';
import 'package:bookly/core/route.dart';
import 'package:bookly/core/simple_bloc_obervator.dart';
import 'package:bookly/core/utils/hive_constant.dart';
import 'package:bookly/core/utils/localizations_delegates.dart';
import 'package:bookly/core/utils/color_app.dart';
import 'package:bookly/core/utils/lang_constant.dart';
import 'package:bookly/fueature/home/domain/entities/home_entity.dart';
import 'package:bookly/fueature/home/presntation/manage/book_detail/book_detail_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(HomeEntityAdapter());
  await Hive.openBox<HomeEntity>(HiveConstant.hiveHeadBooks);
  await Hive.openBox<HomeEntity>(HiveConstant.hiveBodyBooks);
  Bloc.observer = SimpleBlocObervator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});
  @override
  Widget build(BuildContext context) {
    setupGetItLocal(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider(create:(context) => BookDetailCubit() ),
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
