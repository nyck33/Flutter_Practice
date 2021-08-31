import 'dart:math';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/weather.dart';
import './api_key.dart';
import './network_exception.dart';

abstract class WeatherRepository {
  final String _authority = 'api.openweathermap.org';
  String _path = 'data/2.5/weather/?q=';
  final String _apikey = apiKey;
  Future<dynamic> fetchWeather(String cityName);
}

class ApiWeatherRepository implements WeatherRepository {
  //String get authority => _authority;
  //String get path => _path;
  //String get apiKey => "secret api_key";
  //set authority(String domain) => _authority = domain;
  //set path(String newPath) => _path = newPath;
  //set newApiKey(String key) => "cannot reset api key";
  //late final newWeather;
  @override
  Future<dynamic> fetchWeather(String cityName) async {
    this._path += cityName;
    final Uri url = Uri.https(_authority, _path);

    http.Response response = await http.get(url);

    if (response.statusCode == HttpStatus.ok) {
      return response.body;
    } else {
      print('http error: ${response.statusCode}');
      return null;
    }
    //return the resonse to service
    //return newWeather;
    //return response.body;
  }

  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
