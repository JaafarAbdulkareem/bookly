import 'package:bookly/core/class/failure.dart';
import 'package:bookly/core/function/model_to_entity.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/core/utils/hive_constant.dart';
import 'package:bookly/fueature/home/data/data_source/local_data_source.dart';
import 'package:bookly/fueature/home/data/data_source/remote_data_source.dart';
import 'package:bookly/fueature/home/domain/entities/home_entity.dart';
import 'package:bookly/fueature/home/domain/repositories/fetch_domain_respository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class FetchDataRespository extends FetchDomainRespository {
  final LocalDataSource localDataSource;
  final RemoteDataSource remoteDataSource;

  FetchDataRespository({
    required this.localDataSource,
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, List<HomeEntity>>> fetchHeadRespository(
      {required int startScroll}) async {
    try {
      List<BookModel> dataModel;
      List<HomeEntity> data;
      data = localDataSource.fetchHeadRespository(startScroll: startScroll);
      if (data.isNotEmpty) {
        return right(data);
      }
      dataModel = await remoteDataSource.fetchHeadRespository(
        startScroll: startScroll,
      );
      data = modelToHomeEntity(dataModel, HiveConstant.hiveHeadBooks);
      return right(data);
    } catch (e) {
      if (e is DioException) {
        return left(ServersFailure.fromDioError(e));
      }
      return left(ServersFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<HomeEntity>>> fetchBodyRespository(
      {required int startScroll}) async {
    try {
      List<BookModel> dataModel;
      List<HomeEntity> data;
      data = localDataSource.fetchBodyRespository(startScroll: startScroll);
      if (data.isNotEmpty) {
        return right(data);
      }
      dataModel = await remoteDataSource.fetchBodyRespository(
        startScroll: startScroll,
      );
      data = modelToHomeEntity(dataModel, HiveConstant.hiveBodyBooks);
      return right(data);
    } catch (e) {
      if (e is DioException) {
        return left(ServersFailure.fromDioError(e));
      }
      return left(ServersFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<HomeEntity>>> fetchSimilerRespository(
      {required int startScroll}) async {
    try {
      List<BookModel> dataModel;
      List<HomeEntity> data;
      data = localDataSource.fetchSimilerRespository(startScroll: startScroll);
      if (data.isNotEmpty) {
        return right(data);
      }
      dataModel = await remoteDataSource.fetchSimilerRespository(
        startScroll: startScroll,
      );
      data = modelToHomeEntity(dataModel, HiveConstant.hiveSimilerBooks);
      return right(data);
    } catch (e) {
      if (e is DioException) {
        return left(ServersFailure.fromDioError(e));
      }
      return left(ServersFailure(errorMessage: e.toString()));
    }
  }
}
