import 'package:bookly/core/api_service.dart';
import 'package:bookly/core/function/json_to_book_model.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/core/utils/api_constant.dart';

abstract class RemoteDataSource {
  Future<List<BookModel>> fetchRemoteRepositry({required String searchTitle});
}

class SearchRemoteDataSource extends RemoteDataSource {
  final ApiService apiService;

  SearchRemoteDataSource({required this.apiService});

  @override
  Future<List<BookModel>> fetchRemoteRepositry(
      {required String searchTitle}) async {
    var data =
        await apiService.get(url: "${ApiConstant.searchUrl}$searchTitle");
    List<BookModel> dataModel = jsonToBookModel(data);
    return dataModel;
  }
}
