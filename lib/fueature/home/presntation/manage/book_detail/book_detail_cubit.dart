import 'package:bookly/fueature/home/domain/entities/home_entity.dart';
import 'package:bookly/fueature/home/presntation/manage/book_detail/book_detail_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailCubit extends Cubit<BookDetailState> {
  BookDetailCubit() : super(BookDetailInitial());

  late HomeEntity book;
}
