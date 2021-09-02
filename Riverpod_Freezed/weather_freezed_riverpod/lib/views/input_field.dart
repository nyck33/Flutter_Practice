import 'package:flutter/material.dart';
import 'package:weather_freezed_riverpod/controllers/weather_notifier.dart';
import '../providers/providers.dart';
import '../models/weather.dart';

class InputField extends StatelessWidget {
  final WeatherNotifier _weatherNotifier;
  //final Weather _weather;
  InputField(this._weatherNotifier); //, this._weather);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    TextEditingController cityController = TextEditingController();

    return Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: TextField(
          controller: cityController,
          decoration: InputDecoration(
            hintText: 'Enter city',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            suffixIcon: Icon(Icons.search),
          ),
        ),
      ),
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: ElevatedButton(
            onPressed: () => _weatherNotifier.getWeather(cityController.text),
            style: style,
            child: const Text('Submit'),
          ))
    ]);
  }
}
