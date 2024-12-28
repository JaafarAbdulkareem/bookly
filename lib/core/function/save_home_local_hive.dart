import 'package:bookly/fueature/home/domain/entities/home_entity.dart';
import 'package:bookly/fueature/search/domain/entities/search_entity.dart';
import 'package:hive_flutter/hive_flutter.dart';

void saveHomeLocal(List<HomeEntity> homeData, String boxAdrress) {
  var box = Hive.box<HomeEntity>(boxAdrress);
  box.addAll(homeData);
}

void saveSearchLocal(List<SearchEntity> searchData, String boxAdrress) {
  var box = Hive.box<SearchEntity>(boxAdrress);
  box.addAll(searchData);
}
