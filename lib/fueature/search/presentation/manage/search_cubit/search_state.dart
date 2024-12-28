import 'package:bookly/fueature/search/domain/entities/search_entity.dart';

abstract class SearchState {}

final class SearchInitial extends SearchState {}

final class SearchLoading extends SearchState {}

final class SearchSuccess extends SearchState {
  final List<SearchEntity> books;
  SearchSuccess({required this.books});
}

final class SearchFailure extends SearchState {
  final String errorMessage;
  SearchFailure({required this.errorMessage});
}
