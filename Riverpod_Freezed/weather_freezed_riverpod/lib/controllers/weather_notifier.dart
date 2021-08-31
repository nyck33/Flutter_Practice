//this is where I make the API call

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_freezed_riverpod/repositories/network_exception.dart';
import 'package:weather_freezed_riverpod/services/failure.dart';

import '../services/weather_service.dart';
import '../model/weather.dart';
import '../services/weather_state.dart';
import '../repositories/weather_repository.dart';

//part 'weather_notifier.freezed.dart';

class WeatherNotifier extends StateNotifier<WeatherState> {
  //final WeatherRepository _weatherRepository;
  final WeatherService _weatherService;
  //WeatherState _weatherState = Initial();

  WeatherNotifier(this._weatherService) : super(Initial());

  Future<void> getWeather(String cityName) async {
    try {
      //_weatherState = Loading();
      state = Loading(); //WeatherState.loading();
      final weather = await _weatherService.callWeatherApi(cityName);
      state = Loaded(weather);
      //return weather;
    } //on NetworkException catch (failure){
    on NetworkException {
      state = Error(Failure.network());
      //return null;
    }
  }
}
