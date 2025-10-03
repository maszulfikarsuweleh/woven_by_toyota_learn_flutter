import 'package:flutter/material.dart';
import 'package:woven_by_toyota/data/career/model/career_response.dart';
import 'package:woven_by_toyota/data/career/repository/career_repository.dart';

class CareerViewModel extends ChangeNotifier {
  final CareerRepository repository;
  CareerViewModel(this.repository);

  CareerResponse? _careerResponse;
  bool _isLoading = false;

  CareerResponse? get careerResponse => _careerResponse;
  bool get isLoading => _isLoading;

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
}