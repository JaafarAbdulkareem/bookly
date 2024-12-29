import 'package:bookly/core/api_service.dart';
import 'package:bookly/fueature/home/data/data_source/local_data_source.dart';
import 'package:bookly/fueature/home/data/data_source/remote_data_source.dart';
import 'package:bookly/fueature/home/data/repositories/fetch_data_respository.dart';
import 'package:bookly/fueature/search/data/data_source/local_data_source.dart';
import 'package:bookly/fueature/search/data/data_source/remote_data_source.dart';
import 'package:bookly/fueature/search/data/repositories/search_data_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void setupHome(BuildContext context) {
  if (!getIt.isRegistered<ApiService>()) {
    getIt.registerSingleton<ApiService>(
      ApiService(
        Dio(),
      ),
    );
  }
  if (!getIt.isRegistered<FetchDataRespository>()) {
    getIt.registerSingleton<FetchDataRespository>(
      FetchDataRespository(
        localDataSource: HomeLocalDataSource(),
        remoteDataSource: HomeRemoteDataSource(
          apiService: getIt.get<ApiService>(),
        ),
      ),
    );
  }

  if (!getIt.isRegistered<SearchDataRepository>()) {
    getIt.registerSingleton<SearchDataRepository>(
      SearchDataRepository(
        localDataSource: SearchLocalDataSource(),
        remoteDataSource: SearchRemoteDataSource(
          apiService: getIt.get<ApiService>(),
        ),
      ),
    );
  }
}
