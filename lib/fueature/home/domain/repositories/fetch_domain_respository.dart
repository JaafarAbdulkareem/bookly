import 'package:bookly/core/class/failure.dart';
import 'package:bookly/fueature/home/domain/entities/home_entity.dart';
import 'package:dartz/dartz.dart';

abstract class FetchDomainRespository {
  Future<Either<Failure, List<HomeEntity>>> fetchHeadRespository({int startScroll = 0});
  Future<Either<Failure, List<HomeEntity>>> fetchBodyRespository();
}
