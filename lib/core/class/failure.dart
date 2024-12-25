import 'package:bookly/core/utils/language_keys.dart';
import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure({required this.errorMessage});
}

class ServersFailure extends Failure {
  ServersFailure({required super.errorMessage});

  factory ServersFailure.fromDioError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServersFailure(
          errorMessage: LanguageKeys.connectionTimeout,
        );
      case DioExceptionType.sendTimeout:
        return ServersFailure(
          errorMessage: LanguageKeys.sendTimeout,
        );
      case DioExceptionType.receiveTimeout:
        return ServersFailure(
          errorMessage: LanguageKeys.receiveTimeout,
        );
      case DioExceptionType.badCertificate:
        return ServersFailure(
          errorMessage: LanguageKeys.badCertificateTimeout,
        );
      case DioExceptionType.badResponse:
        return ServersFailure.fromBadResponse(e.response!);
      case DioExceptionType.cancel:
        return ServersFailure(
          errorMessage: LanguageKeys.cancelTimeout,
        );
      case DioExceptionType.connectionError:
        return ServersFailure(
          errorMessage: LanguageKeys.connectionError,
        );
      case DioExceptionType.unknown:
        return ServersFailure(
          errorMessage: LanguageKeys.unknownError,
        );
    }
  }

  factory ServersFailure.fromBadResponse(Response<dynamic> response) {
    int statusCode = response.statusCode!;
    if (statusCode == 404) {
      return ServersFailure(
        errorMessage: LanguageKeys.badResponse404,
      );
    } else if (statusCode == 500) {
      return ServersFailure(
        errorMessage: LanguageKeys.badResponse500,
      );
    } else if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServersFailure(
        errorMessage: LanguageKeys.badResponse400,
      );
    }
    return ServersFailure(
      errorMessage: LanguageKeys.unknownError,
    );
  }
}
