import 'package:bookly/core/class/failure.dart';
import 'package:bookly/core/use_case/use_case_with_parameter.dart';
import 'package:bookly/fueature/home/domain/entities/home_entity.dart';
import 'package:bookly/fueature/home/domain/repositories/fetch_domain_respository.dart';
import 'package:dartz/dartz.dart';

class FetchHeadUsecase extends UseCaseWithParameter<List<HomeEntity>, int> {
  final FetchDomainRespository fetchRespository;

  FetchHeadUsecase({required this.fetchRespository});

  @override
  Future<Either<Failure, List<HomeEntity>>> call(int parameter) {
    return fetchRespository.fetchHeadRespository(startScroll: parameter);
  }
}
