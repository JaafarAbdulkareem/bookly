import 'package:bookly/core/utils/hive_constant.dart';
import 'package:bookly/fueature/home/domain/entities/home_entity.dart';
import 'package:bookly/fueature/search/domain/entities/search_entity.dart';
import 'package:hive/hive.dart';

Future<void> hiveRegister() async {
  await homHiveRegister();
  await searchHiveRegister();
}

Future<void> homHiveRegister() async {
  Hive.registerAdapter(HomeEntityAdapter());
  await Hive.openBox<HomeEntity>(HiveConstant.hiveHeadBooks);
  await Hive.openBox<HomeEntity>(HiveConstant.hiveBodyBooks);
  await Hive.openBox<HomeEntity>(HiveConstant.hiveSimilerBooks);
}

Future<void> searchHiveRegister() async {
  Hive.registerAdapter(SearchEntityAdapter());
  await Hive.openBox<SearchEntity>(HiveConstant.hiveSeachBooks);
}
