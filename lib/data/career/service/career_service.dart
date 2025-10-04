import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:woven_by_toyota/core/network/constants.dart';
import 'package:woven_by_toyota/data/career/model/career_response.dart';
import 'package:woven_by_toyota/data/career/model/open_vacancy_response.dart';

class CareerService {
  final Dio _dioWovenApi;
  final Dio _dioLeverApi;
  
  CareerService({required Dio dioWovenApi, required Dio dioLeverApi})
      : _dioWovenApi = dioWovenApi,
        _dioLeverApi = dioLeverApi;

  Future<CareerResponse> fetchCareerData() async {
    try {
      final response = await _dioWovenApi.get(ApiConstants.careerPath);
      return CareerResponse.fromJson(response.data);
    } on DioException catch (e) {
      throw Exception('Failed to load home data: ${e.message}');
    }
  }

  Future<List<OpenVacancyItemResponse>> fetchJobListings() async {
    try {
      final response = await _dioLeverApi.get(ApiConstants.leverPosting,
          queryParameters: {QueryParameters.modeKey: QueryParameters.mode});
      
// 1. Cast the response data to a List of dynamic maps.
      final List<dynamic> jsonList = response.data;
      
      // 2. Map each item in the list to an OpenVacancyResponse object.
      final List<OpenVacancyItemResponse> jobListings = jsonList
          .map((json) => OpenVacancyItemResponse.fromJson(json))
          .toList();

      // 3. Return the fully parsed list.
      return jobListings;
    } on DioException catch (e) {
      throw Exception('Failed to load job listings: ${e.message}');
    }
  }
}