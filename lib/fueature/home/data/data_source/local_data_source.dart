import 'package:bookly/core/utils/hive_constant.dart';
import 'package:bookly/fueature/home/domain/entities/home_entity.dart';
import 'package:hive/hive.dart';

abstract class LocalDataSource {
  List<HomeEntity> fetchHeadRespository({required int startScroll});
  List<HomeEntity> fetchBodyRespository();
}

class HomeLocalDataSource extends LocalDataSource {
  late int _endScroll;
  @override
  List<HomeEntity> fetchHeadRespository({required int startScroll}) {
    var box = Hive.box<HomeEntity>(HiveConstant.hiveHeadBooks);
    bool e = exceptionOfSubList(startScroll, box.values.length);
    if (e) {
      return box.values.toList().sublist(startScroll, _endScroll);
    } else {
      return [];
    }
  }

  bool exceptionOfSubList(int startScroll, int length) {
    _endScroll = (startScroll + 1) * 10;
    if (startScroll >= length) {
      return false;
    } else {
      if (_endScroll > length) {
        _endScroll = length;
      }
      return true;
    }
  }

  @override
  List<HomeEntity> fetchBodyRespository() {
    var box = Hive.box<HomeEntity>(HiveConstant.hiveBodyBooks);
    return box.values.toList();
  }
}
