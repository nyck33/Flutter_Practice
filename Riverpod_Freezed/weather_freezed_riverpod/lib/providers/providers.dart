import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_freezed_riverpod/services/weather_service.dart';
import '../controllers/weather_notifier.dart';
import '../repositories/weather_repository.dart';
import '../services/weather_service.dart';
import '../model/weather.dart';

//cascades nesting for instantiation

final apiWeatherRepository = ApiWeatherRepository();
final apiWeatherServiceProvider = WeatherService(apiWeatherRepository);
//final apiWeatherNotifier =
//  Provider((ref) => WeatherNotifier(apiWeatherServiceProvider));

final weatherProvider = StateNotifierProvider.autoDispose(
    (_) => WeatherNotifier(apiWeatherServiceProvider));
