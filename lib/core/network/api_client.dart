import 'package:dio/dio.dart';
import 'package:woven_by_toyota/core/network/constants.dart';

class DioClient {
  late final Dio dioWovenApi;
  late final Dio dioLeverApi;

  DioClient() {
    dioWovenApi = _createWovenApi();
    dioLeverApi = _createLeverApi();
  }

  Dio _createWovenApi() {
    return Dio(
      BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        responseType: ResponseType.json,
        headers: {
          "Content-Type": "application/json",
        },
      ),
    )..interceptors.addAll([
        LogInterceptor(responseBody: true),
      ]);
  }

  Dio _createLeverApi() {
    return Dio(
      BaseOptions(
        baseUrl: ApiConstants.leverBaseUrl,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        responseType: ResponseType.json,
        headers: {
          "Content-Type": "application/json",
        },
      ),
    )..interceptors.addAll([
        LogInterceptor(responseBody: true),
      ]);
  }
}
