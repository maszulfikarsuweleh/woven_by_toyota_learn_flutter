import 'package:dio/dio.dart';
import 'package:woven_by_toyota/core/network/constants.dart';

class DioClient {
  final Dio _dio;

  DioClient()
      : _dio = Dio(
          BaseOptions(
            baseUrl: ApiConstants.baseUrl,
            connectTimeout: const Duration(seconds: 10),
            receiveTimeout: const Duration(seconds: 10),
            responseType: ResponseType.json,
            headers: {
              "Content-Type": "application/json",
            },
          ),
        ) {
    _dio.interceptors.addAll([
      LogInterceptor(responseBody: true),
    ]);
  }

  Dio get dio => _dio;
}
