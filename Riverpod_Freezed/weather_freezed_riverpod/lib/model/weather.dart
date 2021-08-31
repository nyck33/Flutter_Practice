import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
abstract class Weather with _$Weather {
  const Weather._();

  const factory Weather(
      {required Map<String, dynamic> coordinates,
      required List<Map<String, dynamic>> weather,
      required String base,
      required Map<String, dynamic> main,
      required dynamic visibility,
      required Map<String, dynamic> wind,
      required Map<String, dynamic> clouds,
      required dynamic dt,
      required Map<String, dynamic> sys,
      required dynamic timezone,
      required dynamic id,
      required String cityName,
      required dynamic cod
      //@required double temperature,
      }) = _Weather;
  //does this include all json keys?
  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}
