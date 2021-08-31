import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:weather_freezed_riverpod/services/weather_state.dart';

import '../repositories/weather_repository.dart';
import '../model/weather.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//part 'weather_service.freezed.dart';
//part 'weather_service.g.dart';

//@freezed
class WeatherService extends StateNotifier<WeatherState> {
  ApiWeatherRepository _apiWeatherRepository;
  //final String? cityName;

  WeatherService(this._apiWeatherRepository) : super(Initial());

  Future<dynamic> callWeatherApi(cityName) async {
    final responseBody = await _apiWeatherRepository.fetchWeather(cityName!);
    final weather = Weather.fromJson(json.decode(responseBody));
    return weather;
  }
}
