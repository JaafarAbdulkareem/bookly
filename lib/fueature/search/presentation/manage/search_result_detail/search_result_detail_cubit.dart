import 'package:bookly/fueature/home/domain/entities/home_entity.dart';
import 'package:bookly/fueature/search/domain/entities/search_entity.dart';
import 'package:bookly/fueature/search/presentation/manage/search_result_detail/search_result_detail_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultDetailCubit extends Cubit<SearchResultDetailState> {
  SearchResultDetailCubit() : super(SearchResultDetailInitial());

  // late SearchEntity book;

  HomeEntity convertToHomeBook(SearchEntity book) {
    return HomeEntity(
      bookID: book.bookID,
      image: book.image,
      bookName: book.bookName,
      authName: book.authName,
      pageNumber: book.pageNumber,
      rate: book.rate,
      previewLink: book.previewLink,
    );
  }
}
