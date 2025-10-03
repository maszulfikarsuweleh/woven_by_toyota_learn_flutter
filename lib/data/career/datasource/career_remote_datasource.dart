import 'package:dio/dio.dart';
import 'package:woven_by_toyota/core/network/api_client.dart';
import 'package:woven_by_toyota/core/network/constants.dart';
import 'package:woven_by_toyota/data/career/model/career_response.dart';

class CareerRemoteDatasource {
    final DioClient dioClient;

  CareerRemoteDatasource(this.dioClient);

  Future<CareerResponse> getHomeItems() async {
    try {
      var endpoint = ApiConstants.mainPath + ApiConstants.mainHome;
      final response = await dioClient.dio.get(endpoint);
      final data = response.data;
      return data.map((e) => CareerResponse.fromJson(e));
    } on DioException catch (e) {
      throw Exception("Network error: ${e.message}");
    }
  }
}