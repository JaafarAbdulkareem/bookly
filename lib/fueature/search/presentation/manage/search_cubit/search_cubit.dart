import 'package:bookly/fueature/search/domain/search_use_case/search_usecase.dart';
import 'package:bookly/fueature/search/presentation/manage/search_cubit/search_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.fetchSearchUsecase) : super(SearchInitial());
  final FetchSearchUsecase fetchSearchUsecase;
  Future<void> fetchSearchBooks({required String searchTitle}) async {
    emit(SearchLoading());
    var data = await fetchSearchUsecase.call(searchTitle);
    data.fold((failure) {
      emit(SearchFailure(errorMessage: failure.errorMessage));
    }, (books) {
      emit(SearchSuccess(books: books));
    });
  }
}
