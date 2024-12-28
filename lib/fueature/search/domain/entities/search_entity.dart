import 'package:hive/hive.dart';

part 'search_entity.g.dart';

@HiveType(typeId: 0)
class SearchEntity {
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
  @HiveField(6)
  final String? previewLink;

  SearchEntity({
    required this.bookID,
    required this.image,
    required this.bookName,
    required this.authName,
    required this.pageNumber,
    required this.rate,
    required this.previewLink,
  });
}
