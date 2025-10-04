import 'package:flutter/foundation.dart';
import '../../../data/home/repository/home_repository.dart';
import '../../../data/common/model/common_response.dart';

class HomeViewModel extends ChangeNotifier {
  final HomeRepository repository;
  HomeViewModel(this.repository);

  CommonResponse? _homeResponse;
  bool _isLoading = false;

  CommonResponse? get homeResponse => _homeResponse;
  bool get isLoading => _isLoading;

  Future<void> loadHomeData() async {
    _isLoading = true;
    notifyListeners();

    try {
      _homeResponse = await repository.fetchHomeData();
    } catch (e) {
      debugPrint("Error fetching home data: $e");
    }

    _isLoading = false;
    notifyListeners();
  }
}
