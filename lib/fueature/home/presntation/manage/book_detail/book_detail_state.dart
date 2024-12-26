import 'package:bookly/fueature/home/domain/entities/home_entity.dart';

abstract class BookDetailState {}

final class BookDetailInitial extends BookDetailState {}

final class BookDetailLoading extends BookDetailState {}

final class BookDetailSuccess extends BookDetailState {
  final HomeEntity books;
  BookDetailSuccess({required this.books});
}

final class BookDetailFailure extends BookDetailState {
  final String errorMessage;
  BookDetailFailure({required this.errorMessage});
}
