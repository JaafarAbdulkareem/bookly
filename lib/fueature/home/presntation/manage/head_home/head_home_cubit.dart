import 'package:bookly/fueature/home/domain/home_use_case/fetch_head_usecase.dart';
import 'package:bookly/fueature/home/presntation/manage/head_home/head_home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HeadHomeCubit extends Cubit<HeadHomeState> {
  HeadHomeCubit(this.fetchHeadUsecase) : super(HeadHomeInitial());
  final FetchHeadUsecase fetchHeadUsecase;
  Future<void> fetchHeadBooks() async {
    emit(HeadHomeLoading());
    var data = await fetchHeadUsecase.call();
    data.fold((failure) {
      emit(HeadHomeFailure(errorMessage: failure.errorMessage));
    }, (books) {
      emit(HeadHomeSuccess(books: books));
    });
  }
}
