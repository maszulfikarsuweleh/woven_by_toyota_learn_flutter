import 'package:woven_by_toyota/data/home/model/home_response.dart';
import 'package:woven_by_toyota/data/home/service/home_service.dart';

class HomeRepository {
  
  final HomeService service;
  HomeRepository(this.service);

  Future<HomeResponse> fetchHomeData() async {
    return await service.fetchHomeData();
  }
}