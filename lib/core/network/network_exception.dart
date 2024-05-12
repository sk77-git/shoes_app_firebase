import 'dart:async';

import 'package:dio/dio.dart';
import 'package:shoe_shop_firebase/core/constants/app_strings.dart';
import 'package:shoe_shop_firebase/core/storage/app_stoarge.dart';

class NetworkException {
  static String getMessageForException(dynamic e) {
    if (e is DioException) {
      if (e.type == DioExceptionType.connectionError) {
        return AppStrings.noInternet;
      } else {
        return AppStrings.error;
      }
    } else if (e is FormatException) {
      return AppStrings.parseError;
    } else if (e is TimeoutException) {
      return AppStrings.serverTimeOut;
    } else if (e is TypeError) {
      return AppStrings.parseError;
    } else {
      return AppStrings.error;
    }
  }

  static String getMessage(Response? response) {
    switch (response?.statusCode) {
      case 400:
        return 'Bad Request';
      case 401:
        {
          AppStorage.clear();
          //TODO: Logout the user with proper message
          return AppStrings.unAuthorised;
        }
      case 403:
        return AppStrings.forbidden;
      case 404:
        return AppStrings.notFound;
      case 413:
        return AppStrings.fileSizeError;
      case 500:
        return AppStrings.serverError;
      case 502:
        return AppStrings.serverError;
      default:
        return 'Error getting data. Error Code: ${response?.statusCode}';
    }
  }
}
