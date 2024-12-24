import 'package:bookly/core/extension_language.dart';
import 'package:bookly/core/utils/language_keys.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

abstract class Failure {
  final String errorMessage;

  Failure({required this.errorMessage});
}

class ServersFailure extends Failure {
  ServersFailure({required super.errorMessage});

  factory ServersFailure.fromDioError(BuildContext context, DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServersFailure(
          errorMessage: LanguageKeys.connectionTimeout.tr(context),
        );
      case DioExceptionType.sendTimeout:
        return ServersFailure(
          errorMessage: LanguageKeys.sendTimeout.tr(context),
        );
      case DioExceptionType.receiveTimeout:
        return ServersFailure(
          errorMessage: LanguageKeys.receiveTimeout.tr(context),
        );
      case DioExceptionType.badCertificate:
        return ServersFailure(
          errorMessage: LanguageKeys.badCertificateTimeout.tr(context),
        );
      case DioExceptionType.badResponse:
        return ServersFailure.fromBadResponse(context, e.response!);
      case DioExceptionType.cancel:
        return ServersFailure(
          errorMessage: LanguageKeys.cancelTimeout.tr(context),
        );
      case DioExceptionType.connectionError:
        return ServersFailure(
          errorMessage: LanguageKeys.connectionError.tr(context),
        );
      case DioExceptionType.unknown:
        return ServersFailure(
          errorMessage: LanguageKeys.unknownError.tr(context),
        );
    }
  }

  factory ServersFailure.fromBadResponse(
      BuildContext context, Response<dynamic> response) {
    int statusCode = response.statusCode!;
    if (statusCode == 404) {
      return ServersFailure(
        errorMessage: LanguageKeys.badResponse404.tr(context),
      );
    } else if (statusCode == 500) {
      return ServersFailure(
        errorMessage: LanguageKeys.badResponse500.tr(context),
      );
    } else if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServersFailure(
        errorMessage: LanguageKeys.badResponse400.tr(context),
      );
    }
    return ServersFailure(
      errorMessage: LanguageKeys.unknownError.tr(context),
    );
  }
}
