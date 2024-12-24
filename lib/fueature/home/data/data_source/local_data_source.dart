import 'package:bookly/core/utils/hive_constant.dart';
import 'package:bookly/fueature/home/domain/entities/home_entity.dart';
import 'package:hive/hive.dart';


abstract class LocalDataSource {
  List<HomeEntity> fetchHeadRespository();
  List<HomeEntity> fetchBodyRespository();
}

class HomeLocalDataSource extends LocalDataSource {
  @override
  List<HomeEntity> fetchHeadRespository() {
    var box = Hive.box<HomeEntity>(HiveConstant.hiveHeadBooks);
    return box.values.toList();
  }

  @override
  List<HomeEntity> fetchBodyRespository() {
    var box = Hive.box<HomeEntity>(HiveConstant.hiveBodyBooks);
    return box.values.toList();
  }
}
