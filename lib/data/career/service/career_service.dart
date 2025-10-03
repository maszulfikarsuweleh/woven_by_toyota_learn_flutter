import 'package:dio/dio.dart';
import 'package:woven_by_toyota/core/network/constants.dart';
import 'package:woven_by_toyota/data/career/model/career_response.dart';

class CareerService {
  final Dio dio;
  CareerService(this.dio);
  Future<CareerResponse> fetchCareerData() async {
    try {
      final response = await dio.get(ApiConstants.careerPath);
      return CareerResponse.fromJson(response.data);
    } on DioException catch (e) {
      throw Exception('Failed to load home data: ${e.message}');
    }
  }
}