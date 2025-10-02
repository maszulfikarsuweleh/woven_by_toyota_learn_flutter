// ignore_for_file: file_names
import 'package:get_it/get_it.dart';
import 'package:woven_by_toyota/core/network/api_client.dart';
import 'package:woven_by_toyota/data/home/repository/home_repository.dart';
import 'package:woven_by_toyota/data/home/service/home_service.dart';
import 'package:woven_by_toyota/presentation/home/viewmodel/home_viewmodel.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton<DioClient>(() => DioClient());
  locator.registerLazySingleton<HomeService>(() => HomeService(locator<DioClient>().dio));
  locator.registerLazySingleton<HomeRepository>(() => HomeRepository(locator<HomeService>()));
  locator.registerFactory<HomeViewModel>(() => HomeViewModel(locator<HomeRepository>()));
}