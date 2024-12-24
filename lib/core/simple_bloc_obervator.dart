import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObervator extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    log("change : $change");
    super.onChange(bloc, change);
  }
}