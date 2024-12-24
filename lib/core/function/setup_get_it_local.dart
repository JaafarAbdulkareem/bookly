import 'package:bookly/core/api_service.dart';
import 'package:bookly/fueature/home/data/data_source/local_data_source.dart';
import 'package:bookly/fueature/home/data/data_source/remote_data_source.dart';
import 'package:bookly/fueature/home/data/repositories/fetch_data_respository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

setupGetItLocal(BuildContext context) {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  getIt.registerSingleton<FetchDataRespository>(
    FetchDataRespository(
      context: context,
      localDataSource: HomeLocalDataSource(),
      remoteDataSource: HomeRemoteDataSource(
        apiService: getIt.get<ApiService>(),
      ),
    ),
  );
}
