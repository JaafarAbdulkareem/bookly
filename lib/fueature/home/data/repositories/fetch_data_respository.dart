import 'package:bookly/core/class/failure.dart';
import 'package:bookly/fueature/home/data/data_source/local_data_source.dart';
import 'package:bookly/fueature/home/data/data_source/remote_data_source.dart';
import 'package:bookly/fueature/home/domain/entities/home_entity.dart';
import 'package:bookly/fueature/home/domain/repositories/fetch_domain_respository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class FetchDataRespository extends FetchDomainRespository {
  final BuildContext context;
  final LocalDataSource localDataSource;
  final RemoteDataSource remoteDataSource;

  FetchDataRespository({
    required this.context,
    required this.localDataSource,
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, List<HomeEntity>>> fetchHeadRespository(
      {required int startScroll}) async {
    try {
      List<HomeEntity> data;
      data = localDataSource.fetchHeadRespository(startScroll: startScroll);
      if (data.isNotEmpty) {
        return right(data);
      }
      data = await remoteDataSource.fetchHeadRespository(
        startScroll: startScroll,
      );
      return right(data);
    } catch (e) {
      if (e is DioException) {
        if (context.mounted) {
          return left(ServersFailure.fromDioError(e));
        }
        return left(ServersFailure(errorMessage: e.toString()));
      }
      return left(ServersFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<HomeEntity>>> fetchBodyRespository() async {
    try {
      List<HomeEntity> data;
      data = localDataSource.fetchBodyRespository();
      if (data.isNotEmpty) {
        return right(data);
      }
      data = await remoteDataSource.fetchBodyRespository();
      return right(data);
    } catch (e) {
      if (e is DioException) {
        if (context.mounted) {
          return left(ServersFailure.fromDioError(e));
        }
        return left(ServersFailure(errorMessage: e.toString()));
      }
      return left(ServersFailure(errorMessage: e.toString()));
    }
  }
}
