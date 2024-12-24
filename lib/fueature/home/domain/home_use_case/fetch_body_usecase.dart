import 'package:bookly/core/class/failure.dart';
import 'package:bookly/core/use_case/use_case_without_parameter.dart';
import 'package:bookly/fueature/home/domain/entities/home_entity.dart';
import 'package:bookly/fueature/home/domain/repositories/fetch_domain_respository.dart';
import 'package:dartz/dartz.dart';

class FetchBodyUsecase extends UseCaseWithoutParameter<List<HomeEntity>> {
  final FetchDomainRespository fetchRespository;

  FetchBodyUsecase({required this.fetchRespository});

  @override
  Future<Either<Failure, List<HomeEntity>>> call() async {
    return await fetchRespository.fetchBodyRespository();
  }
}
