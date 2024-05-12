import 'package:dio/dio.dart';
import 'package:shoe_shop_firebase/core/network/data_response.dart';
import 'package:shoe_shop_firebase/core/network/endpoints.dart';
import 'package:shoe_shop_firebase/core/network/http_client.dart';
import 'package:shoe_shop_firebase/core/network/network_exception.dart';
import 'package:shoe_shop_firebase/core/storage/app_stoarge.dart';

class NetworkClient {
  static Future<DataResponse<T>> getApi<T>(
    String endPoint, {
    required bool isTokenRequired,
    T Function(dynamic json)? responseType,
  }) async {
    try {
      final response = await HttpClient.client.get(
        Endpoints.baseUrl + endPoint,
        options: Options(headers: getHeaders(isTokenRequired)),
      );
      final json = response.data;
      final data = responseType != null ? responseType(json) : json as T;
      return DataResponse.success(data);
    } on DioException catch (e) {
      if (e.type == DioExceptionType.badResponse) {
        return DataResponse.error(NetworkException.getMessage(e.response));
      } else {
        return DataResponse.error(NetworkException.getMessageForException(e));
      }
    } catch (e) {
      return DataResponse.error(NetworkException.getMessageForException(e));
    }
  }

  static Future<DataResponse<T>> postApi<T>(
    String endPoint, {
    required dynamic requestBody,
    T Function(dynamic json)? responseType,
    required bool isTokenRequired,
  }) async {
    try {
      final response = await HttpClient.client.post(
        Endpoints.baseUrl + endPoint,
        data: requestBody,
        options: Options(headers: getHeaders(isTokenRequired)),
      );
      final json = response.data;
      final data = responseType != null ? responseType(json) : json as T;
      return DataResponse.success(data);
    } on DioException catch (e) {
      if (e.type == DioExceptionType.badResponse) {
        return DataResponse.error(NetworkException.getMessage(e.response));
      } else {
        return DataResponse.error(NetworkException.getMessageForException(e));
      }
    } catch (e) {
      return DataResponse.error(NetworkException.getMessageForException(e));
    }
  }

  static Map<String, String> getHeaders(bool isTokenRequired) {
    Map<String, String> header = {
      'Content-Type': 'application/json',
      "Accept": "application/json",
    };
    if (isTokenRequired) {
      header["Authorization"] = "Bearer ${AppStorage.getUserToken()}";
    }
    return header;
  }
}
