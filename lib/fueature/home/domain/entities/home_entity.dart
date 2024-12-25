import 'package:hive/hive.dart';

part 'home_entity.g.dart';

@HiveType(typeId: 0)
class HomeEntity {
  @HiveField(0)
  final String bookID;
  @HiveField(1)
  final String? image;
  @HiveField(2)
  final String bookName;
  @HiveField(3)
  final String? authName;
  @HiveField(4)
  final num? pageNumber;
  @HiveField(5)
  final num? rate;
  final String? previewLink;

  HomeEntity({
    required this.bookID,
    required this.image,
    required this.bookName,
    required this.authName,
    required this.pageNumber,
    required this.rate,
    this.previewLink,
  });
}
