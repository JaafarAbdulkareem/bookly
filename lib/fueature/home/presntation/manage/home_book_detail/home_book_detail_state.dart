import 'package:bookly/fueature/home/domain/entities/home_entity.dart';

abstract class HomeBookDetailState {}

final class HomeBookDetailInitial extends HomeBookDetailState {}

final class HomeBookDetailLoading extends HomeBookDetailState {}

final class HomeBookDetailSuccess extends HomeBookDetailState {
  final HomeEntity books;
  HomeBookDetailSuccess({required this.books});
}

final class HomeBookDetailFailure extends HomeBookDetailState {
  final String errorMessage;
  HomeBookDetailFailure({required this.errorMessage});
}
