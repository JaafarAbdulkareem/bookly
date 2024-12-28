import 'package:bookly/core/function/save_home_local_hive.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/fueature/home/domain/entities/home_entity.dart';

List<HomeEntity> modelToEntity(List<BookModel> dataModel, String hiveConstant) {
  List<HomeEntity> data = [];
  for (var element in dataModel) {
    data.add(HomeEntity.fromModel(element));
  }
  saveHomeLocal(data, hiveConstant);
  return data;
}
