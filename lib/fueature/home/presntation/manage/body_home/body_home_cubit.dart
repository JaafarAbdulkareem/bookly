import 'package:bookly/fueature/home/domain/home_use_case/fetch_body_usecase.dart';
import 'package:bookly/fueature/home/presntation/manage/body_home/body_home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BodyHomeCubit extends Cubit<BodyHomeState> {
  BodyHomeCubit(this.fetchBodyUsecase) : super(BodyHomeInitial());
  final FetchBodyUsecase fetchBodyUsecase;
  Future<void> fetchBodyBooks({int startScroll = 0}) async {
    emit(BodyHomeLoading());
    var data = await fetchBodyUsecase.call(startScroll);
    data.fold((failure) {
      emit(BodyHomeFailure(errorMessage: failure.errorMessage));
    }, (books) {
      emit(BodyHomeSuccess(books: books));
    });
  }
}
