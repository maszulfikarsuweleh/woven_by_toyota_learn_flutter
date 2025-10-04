// ignore_for_file: file_names
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:woven_by_toyota/core/network/api_client.dart';
import 'package:woven_by_toyota/data/career/repository/career_repository.dart';
import 'package:woven_by_toyota/data/career/service/career_service.dart';
import 'package:woven_by_toyota/data/home/repository/home_repository.dart';
import 'package:woven_by_toyota/data/home/service/home_service.dart';
import 'package:woven_by_toyota/domain/career/get_get_group_career_position_use_case.dart';
import 'package:woven_by_toyota/presentation/career/viewmodel/career_viewmodel.dart';
import 'package:woven_by_toyota/presentation/home/viewmodel/home_viewmodel.dart';

final locator = GetIt.instance;
final dioWovenApi = locator<Dio>(instanceName: 'dioWovenApi');
final dioLeverApi = locator<Dio>(instanceName: 'dioLeverApi');

void setupLocator() {
  locator.registerLazySingleton<DioClient>(() => DioClient());
  locator.registerLazySingleton<Dio>(() => DioClient().dioWovenApi, instanceName: 'dioWovenApi');
  locator.registerLazySingleton<Dio>(() => DioClient().dioLeverApi, instanceName: 'dioLeverApi');
  locator.registerLazySingleton<HomeService>(() => HomeService(dioWovenApi));
  locator.registerLazySingleton<HomeRepository>(() => HomeRepository(locator<HomeService>()));
  locator.registerFactory<HomeViewModel>(() => HomeViewModel(locator<HomeRepository>()));
  locator.registerLazySingleton<CareerService>(() => CareerService(dioWovenApi: dioWovenApi, dioLeverApi: dioLeverApi));
  locator.registerLazySingleton<CareerRepository>(() => CareerRepository(locator<CareerService>()));
  locator.registerLazySingleton<GetGetGroupCareerPositionUseCase>(() => GetGetGroupCareerPositionUseCase(repository: locator<CareerRepository>()));
  locator.registerFactory<CareerViewModel>(() => CareerViewModel(locator<CareerRepository>(), locator<GetGetGroupCareerPositionUseCase>()));
}

