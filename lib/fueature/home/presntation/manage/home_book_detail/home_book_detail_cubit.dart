import 'package:bookly/fueature/home/domain/entities/home_entity.dart';
import 'package:bookly/fueature/home/presntation/manage/home_book_detail/home_book_detail_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBookDetailCubit extends Cubit<HomeBookDetailState> {
  HomeBookDetailCubit() : super(HomeBookDetailInitial());

  late HomeEntity book;
}
