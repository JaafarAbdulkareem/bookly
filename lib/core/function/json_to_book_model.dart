import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/core/utils/api_constant.dart';

List<BookModel> jsonToBookModel(Map<String, dynamic> data) {
  List<BookModel> dataHome = [];
  for (var element in data[ApiConstant.items]) {
    dataHome.add(BookModel.fromJson(element));
  }
  return dataHome;
}
