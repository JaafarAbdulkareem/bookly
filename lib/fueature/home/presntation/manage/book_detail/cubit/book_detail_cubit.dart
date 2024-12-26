import 'package:bookly/fueature/home/domain/home_use_case/fetch_similer_usecase.dart';
import 'package:bookly/fueature/home/presntation/manage/book_detail/cubit/book_detail_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailCubit extends Cubit<BookDetailState> {
  BookDetailCubit(this.fetchsimilerUsecase) : super(BookDetailInitial());
  final FetchSimilerUsecase fetchsimilerUsecase;
  Future<void> fetchSimilerBooks({int startScroll = 0}) async {
    emit(BookDetailLoading());
    var data = await fetchsimilerUsecase.call(startScroll);
    data.fold((failure) {
      emit(BookDetailFailure(errorMessage: failure.errorMessage));
    }, (books) {
      emit(BookDetailSuccess(books: books));
    });
  }
}
