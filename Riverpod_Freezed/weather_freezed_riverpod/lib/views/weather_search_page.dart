import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../controllers/weather_notifier.dart';
import '../models/weather.dart';
import '../providers/providers.dart';
import '../models/weather_state.dart';
import './input_field.dart';

class WeatherSearchPage extends HookWidget {
  final WeatherState weatherState = useProvider(weatherProvider.state!);
  final WeatherNotifier weatherNotifier = useProvider(weatherProvider);
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    TextEditingController cityController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("Weather Finder"),
      ),
      body: weatherState.when(
        initial: _buildInputField,
        loading: _buildWeatherLoading,
        loaded: _buildWeatherLoaded,
        error: _buildErrorSnackBar,
      ),
    );
  }

  Widget _buildInputField() {
    return Center(
      child: InputField(weatherNotifier),
    );
  }

  Widget _buildWeatherLoading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildWeatherLoaded() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(
          weatherNotifier.weather.toString(),
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          "Other data here",
          style: TextStyle(fontSize: 80),
        ),
        //InputField(weatherNotifier),  put reset button
      ],
    );
  }

  Widget _buildErrorSnackBar() {
    return Container();
  }
}
