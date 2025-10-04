import 'package:woven_by_toyota/data/common/model/common_response.dart';
import 'package:woven_by_toyota/data/home/service/home_service.dart';

class HomeRepository {
  
  final HomeService service;
  HomeRepository(this.service);

  Future<CommonResponse> fetchHomeData() async {
    return await service.fetchHomeData();
  }
}