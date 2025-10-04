import 'package:dio/dio.dart';
import 'package:woven_by_toyota/core/network/constants.dart';
import 'package:woven_by_toyota/data/common/model/common_response.dart';

class HomeService {
  final Dio dio;
  HomeService(this.dio);
  Future<CommonResponse> fetchHomeData() async {
    try {
      final response = await dio.get(ApiConstants.mainHome);
      return CommonResponse.fromJson(response.data);
    } on DioException catch (e) {
      throw Exception('Failed to load home data: ${e.message}');
    }
  }
}