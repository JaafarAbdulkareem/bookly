import 'package:bookly/core/api_service.dart';
import 'package:bookly/core/function/save_home_local_hive.dart';
import 'package:bookly/core/utils/api_constant.dart';
import 'package:bookly/core/utils/hive_constant.dart';
import 'package:bookly/fueature/home/data/models/home_model/home_model.dart';
import 'package:bookly/fueature/home/domain/entities/home_entity.dart';

abstract class RemoteDataSource {
  Future<List<HomeEntity>> fetchHeadRespository();
  Future<List<HomeEntity>> fetchBodyRespository();
}

class HomeRemoteDataSource extends RemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSource({required this.apiService});
  @override
  Future<List<HomeEntity>> fetchHeadRespository() async {
    var data = await apiService.get(url: ApiConstant.headHomeUrl);
    List<HomeEntity> homeData = getHomeData(data);
    saveHomeLocal(homeData, HiveConstant.hiveHeadBooks);
    return homeData;
  }

  @override
  Future<List<HomeEntity>> fetchBodyRespository() async {
    var data = await apiService.get(url: ApiConstant.bodyHomeUrl);
    List<HomeEntity> homeData = getHomeData(data);
    saveHomeLocal(homeData, HiveConstant.hiveBodyBooks);
    return homeData;
  }

  List<HomeEntity> getHomeData(Map<String, dynamic> data) {
    List<HomeEntity> dataHome = [];
    for (var element in data[ApiConstant.items]) {
      dataHome.add(HomeModel.fromJson(element));
    }
    return dataHome;
  }
}
