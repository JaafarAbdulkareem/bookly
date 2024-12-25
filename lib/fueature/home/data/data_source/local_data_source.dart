import 'package:bookly/core/utils/hive_constant.dart';
import 'package:bookly/fueature/home/domain/entities/home_entity.dart';
import 'package:hive/hive.dart';

abstract class LocalDataSource {
  List<HomeEntity> fetchHeadRespository({int startScroll = 0});
  List<HomeEntity> fetchBodyRespository();
}

class HomeLocalDataSource extends LocalDataSource {
  late int endScroll;
  @override
  List<HomeEntity> fetchHeadRespository({int startScroll = 0}) {
    endScroll = (startScroll + 1) + 10;
    var box = Hive.box<HomeEntity>(HiveConstant.hiveHeadBooks);
    return box.values.toList().sublist(startScroll, endScroll);
  }

  @override
  List<HomeEntity> fetchBodyRespository() {
    var box = Hive.box<HomeEntity>(HiveConstant.hiveBodyBooks);
    return box.values.toList();
  }
}
