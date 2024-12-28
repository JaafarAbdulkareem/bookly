import 'package:bookly/core/api_service.dart';
import 'package:bookly/core/function/json_to_book_model.dart';
import 'package:bookly/core/utils/api_constant.dart';
import 'package:bookly/core/models/book_model/book_model.dart';

abstract class RemoteDataSource {
  Future<List<BookModel>> fetchHeadRespository({required int startScroll});
  Future<List<BookModel>> fetchBodyRespository({required int startScroll});
  Future<List<BookModel>> fetchSimilerRespository({required int startScroll});
}

class HomeRemoteDataSource extends RemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSource({required this.apiService});
  @override
  Future<List<BookModel>> fetchHeadRespository(
      {required int startScroll}) async {
    var data = await apiService.get(
        url: "${ApiConstant.headHomeUrl}&startIndex=${startScroll * 10}");
    List<BookModel> homeData = jsonToBookModel(data);
    return homeData;
  }

  @override
  Future<List<BookModel>> fetchBodyRespository(
      {required int startScroll}) async {
    var data = await apiService.get(
        url: "${ApiConstant.similerHomeUrl}&startIndex=${startScroll * 10}");
    List<BookModel> homeData = jsonToBookModel(data);
    return homeData;
  }

  @override
  Future<List<BookModel>> fetchSimilerRespository(
      {required int startScroll}) async {
    var data = await apiService.get(
        url: "${ApiConstant.bodyHomeUrl}&startIndex=${startScroll * 10}");
    List<BookModel> homeData = jsonToBookModel(data);
    return homeData;
  }
}
