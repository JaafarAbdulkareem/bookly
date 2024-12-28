import 'package:bookly/core/utils/hive_constant.dart';
import 'package:bookly/fueature/search/domain/entities/search_entity.dart';
import 'package:hive/hive.dart';

abstract class LocalDataSource {
  List<SearchEntity> fetchLocalRepositry();
}

class SearchLocalDataSource extends LocalDataSource {
  @override
  List<SearchEntity> fetchLocalRepositry() {
    var box = Hive.box<SearchEntity>(HiveConstant.hiveHeadBooks);
    return box.values.toList();
  }
}
