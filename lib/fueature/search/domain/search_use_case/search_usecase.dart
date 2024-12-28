import 'package:bookly/core/class/failure.dart';
import 'package:bookly/core/use_case/use_case_with_parameter.dart';
import 'package:bookly/fueature/search/domain/entities/search_entity.dart';
import 'package:bookly/fueature/search/domain/repositories/search_domain_repository.dart';
import 'package:dartz/dartz.dart';

class SearchUsecase extends UseCaseWithParameter<List<SearchEntity>, String> {
  final SearchDomainRepository searchDomainRepository;

  SearchUsecase({required this.searchDomainRepository});

  @override
  Future<Either<Failure, List<SearchEntity>>> call(String parameter) {
    return searchDomainRepository.fetchSearchRepositry(searchTitle: parameter);
  }
}
