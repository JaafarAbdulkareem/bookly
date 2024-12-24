import 'package:bookly/core/class/failure.dart';
import 'package:dartz/dartz.dart';

abstract class UseCaseWithoutParameter<Type> {
  Future<Either<Failure, Type>> call();
}
