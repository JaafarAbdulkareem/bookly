import 'package:bookly/fueature/home/domain/entities/home_entity.dart';

abstract class HeadHomeState {}

final class HeadHomeInitial extends HeadHomeState {}

final class HeadHomeLoading extends HeadHomeState {}

final class HeadHomePginationLoading extends HeadHomeState {}

final class HeadHomeSuccess extends HeadHomeState {
  final List<HomeEntity> books;
  HeadHomeSuccess({required this.books});
}

final class HeadHomeFailure extends HeadHomeState {
  final String errorMessage;
  HeadHomeFailure({required this.errorMessage});
}

final class HeadHomePginationFailure extends HeadHomeState {
  final String errorMessage;
  HeadHomePginationFailure({required this.errorMessage});
}
