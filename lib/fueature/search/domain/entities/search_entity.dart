import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:hive/hive.dart';

part 'search_entity.g.dart';

@HiveType(typeId: 1)
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

  factory SearchEntity.fromModel(BookModel dataModel) {
    return SearchEntity(
      bookID: dataModel.id,
      image: dataModel.volumeInfo?.imageLinks?.thumbnail ?? '',
      bookName: dataModel.volumeInfo!.title!,
      authName: dataModel.volumeInfo?.authors?.first ?? '',
      pageNumber: dataModel.volumeInfo!.pageCount,
      rate: dataModel.volumeInfo!.ratingsCount,
      previewLink: dataModel.volumeInfo?.previewLink ?? '',
    );
  }
}
