import 'package:bookly/core/utils/hive_constant.dart';
import 'package:bookly/fueature/home/domain/entities/home_entity.dart';
import 'package:hive/hive.dart';

abstract class LocalDataSource {
  List<HomeEntity> fetchHeadRespository({required int startScroll});
  List<HomeEntity> fetchBodyRespository();
}

class HomeLocalDataSource extends LocalDataSource {
  @override
  List<HomeEntity> fetchHeadRespository({required int startScroll}) {
    var box = Hive.box<HomeEntity>(HiveConstant.hiveHeadBooks);
    late int endScroll = (startScroll + 1) * 10;
    late int length = box.values.length;

    if (startScroll >= length) {
      return [];
    } else {
      if (endScroll > length) {
        endScroll = length;
      }
      return box.values.toList().sublist(startScroll, endScroll);
    }
  }

  @override
  List<HomeEntity> fetchBodyRespository() {
    var box = Hive.box<HomeEntity>(HiveConstant.hiveBodyBooks);
    return box.values.toList();
  }
}
