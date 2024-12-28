import 'package:bookly/core/class/failure.dart';
import 'package:bookly/fueature/search/domain/entities/search_entity.dart';
import 'package:dartz/dartz.dart';

abstract class SearchDomainRepository {
  Future<Either<Failure, List<SearchEntity>>> fetchSearchRepositry(
      {required String searchTitle});
}
