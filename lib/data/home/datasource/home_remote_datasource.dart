import 'package:dio/dio.dart';
import 'package:woven_by_toyota/core/network/api_client.dart';
import 'package:woven_by_toyota/core/network/constants.dart';
import 'package:woven_by_toyota/data/home/model/home_response.dart';

class HomeRemoteDataSource {
  final DioClient dioClient;

  HomeRemoteDataSource(this.dioClient);

  Future<HomeResponse> getHomeItems() async {
    try {
      var endpoint = ApiConstants.mainPath + ApiConstants.mainHome;
      final response = await dioClient.dio.get(endpoint);
      final data = response.data;
      return data.map((e) => HomeResponse.fromJson(e));
    } on DioException catch (e) {
      throw Exception("Network error: ${e.message}");
    }
  }
}
