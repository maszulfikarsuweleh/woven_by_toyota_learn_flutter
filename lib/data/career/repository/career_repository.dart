import 'package:woven_by_toyota/data/career/model/career_response.dart';
import 'package:woven_by_toyota/data/career/service/career_service.dart';

class CareerRepository {
    final CareerService service;
  CareerRepository(this.service);

  Future<CareerResponse> getCareerItems() async {
    return await service.fetchCareerData();
  }
}
