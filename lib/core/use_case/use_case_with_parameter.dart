import 'package:bookly/core/class/failure.dart';
import 'package:dartz/dartz.dart';

abstract class UseCaseWithParameter<Type, parameter> {
  Future<Either<Failure, Type>> call(parameter parameter);
}
