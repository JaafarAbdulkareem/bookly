import 'package:bookly/core/function/save_home_local_hive.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/fueature/home/domain/entities/home_entity.dart';
import 'package:bookly/fueature/search/domain/entities/search_entity.dart';

List<HomeEntity> modelToHomeEntity(
    List<BookModel> dataModel, String hiveConstant) {
  List<HomeEntity> data = [];
  for (var element in dataModel) {
    data.add(HomeEntity.fromModel(element));
  }
  saveHomeLocal(data, hiveConstant);
  return data;
}

List<SearchEntity> modelToSearchEntity(List<BookModel> dataModel) {
  List<SearchEntity> data = [];
  for (var element in dataModel) {
    data.add(SearchEntity.fromModel(element));
  }

  return data;
}
