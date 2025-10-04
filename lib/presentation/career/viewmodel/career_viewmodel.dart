import 'package:flutter/material.dart';
import 'package:woven_by_toyota/data/career/model/career_response.dart';
import 'package:woven_by_toyota/data/career/repository/career_repository.dart';
import 'package:woven_by_toyota/domain/career/get_get_group_career_position_use_case.dart';
import 'package:woven_by_toyota/model/career/job_posting_model.dart';

class CareerViewModel extends ChangeNotifier {
  final CareerRepository repository;
  final GetGetGroupCareerPositionUseCase getGroupCareerPositionUseCase;
  CareerViewModel(this.repository, this.getGroupCareerPositionUseCase);

  bool get isLoading => _isLoading;
  bool _isLoading = false;

  CareerResponse? _careerResponse;
  CareerResponse? get careerResponse => _careerResponse;

  List<JobPosting>? _openVacancyResponse;
  List<JobPosting>? get openVacancyResponse => _openVacancyResponse;

  Future<void> loadCareerData() async {
    _isLoading = true;
    notifyListeners();

    try {
      _careerResponse = await repository.getCareerItems();
    } catch (e) {
      debugPrint("Error fetching career data: $e");
    }

    _isLoading = false;
    notifyListeners();
  }

  Future<void> loadJobListings() async {
    _isLoading = true;
    notifyListeners();

    try {
      _openVacancyResponse = await getGroupCareerPositionUseCase.execute();
    } catch (e) {
      debugPrint("Error fetching job listings: $e");
    }

    _isLoading = false;
    notifyListeners();
  }

  void searchCareer(String term) {}

  void toggleFilter(bool isActive) {}
}