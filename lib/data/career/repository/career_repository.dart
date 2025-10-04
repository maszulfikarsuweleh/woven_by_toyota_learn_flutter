import 'package:woven_by_toyota/data/career/model/career_response.dart';
import 'package:woven_by_toyota/data/career/model/open_vacancy_response.dart';
import 'package:woven_by_toyota/data/career/service/career_service.dart';

class CareerRepository {
    final CareerService service;
  CareerRepository(this.service);

  Future<CareerResponse> getCareerItems() async {
    return await service.fetchCareerData();
  }

  Future<List<OpenVacancyItemResponse>> getJobListings() async {
    return await service.fetchJobListings();
  }
}
