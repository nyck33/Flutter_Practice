//UI State

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import './weather.dart';
import '../../repositories/weather_repository.dart';
import '../services/failure.dart';

part 'weather_state.freezed.dart';
//part 'weather_state.g.dart';

@freezed
abstract class WeatherState with _$WeatherState {
  const factory WeatherState.initial() = Initial;
  const factory WeatherState.loading() = Loading;
  const factory WeatherState.loaded(Weather weather) = Loaded;
  const factory WeatherState.error(Failure failure) = Error;
}
