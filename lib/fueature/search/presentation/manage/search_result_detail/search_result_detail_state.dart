import 'package:bookly/fueature/search/domain/entities/search_entity.dart';

abstract class SearchResultDetailState {}

final class SearchResultDetailInitial extends SearchResultDetailState {}

final class SearchResultDetailLoading extends SearchResultDetailState {}

final class SearchResultDetailSuccess extends SearchResultDetailState {
  final SearchEntity books;
  SearchResultDetailSuccess({required this.books});
}

final class SearchResultDetailFailure extends SearchResultDetailState {
  final String errorMessage;
  SearchResultDetailFailure({required this.errorMessage});
}
