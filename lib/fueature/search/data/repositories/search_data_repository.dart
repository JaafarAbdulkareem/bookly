import 'package:bookly/core/class/failure.dart';
import 'package:bookly/core/function/model_to_entity.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/fueature/search/data/data_source/local_data_source.dart';
import 'package:bookly/fueature/search/data/data_source/remote_data_source.dart';
import 'package:bookly/fueature/search/domain/entities/search_entity.dart';
import 'package:bookly/fueature/search/domain/repositories/search_domain_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchDataRepository extends SearchDomainRepository {
  final LocalDataSource localDataSource;
  final RemoteDataSource remoteDataSource;

  SearchDataRepository(
      {required this.localDataSource, required this.remoteDataSource});
  @override
  Future<Either<Failure, List<SearchEntity>>> fetchSearchRepositry(
      {required String searchTitle}) async {
    try {
      List<BookModel> dataModel;
      List<SearchEntity> data;
      // data = localDataSource.fetchLocalRepositry();
      // if (data.isNotEmpty) {
      //   return right(data);
      // }
      dataModel =
          await remoteDataSource.fetchRemoteRepositry(searchTitle: searchTitle);
      data = modelToSearchEntity(dataModel);
      // saveSearchLocal(data, HiveConstant.hiveSearchBooks);
      return right(data);
    } catch (e) {
      if (e is DioException) {
        return left(ServersFailure.fromDioError(e));
      }
      return left(ServersFailure(errorMessage: e.toString()));
    }
  }
}
