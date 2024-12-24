import 'package:bookly/fueature/home/domain/entities/home_entity.dart';

abstract class BodyHomeState {}

final class BodyHomeInitial extends BodyHomeState {}

final class BodyHomeLoading extends BodyHomeState {}

final class BodyHomeSuccess extends BodyHomeState {
  final List<HomeEntity> books;

  BodyHomeSuccess({required this.books});
}

final class BodyHomeFailure extends BodyHomeState {
  final String errorMessage;

  BodyHomeFailure({required this.errorMessage});
}
