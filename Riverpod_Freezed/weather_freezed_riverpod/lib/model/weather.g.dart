// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Weather _$_$_WeatherFromJson(Map<String, dynamic> json) {
  return _$_Weather(
    coordinates: json['coordinates'] as Map<String, dynamic>,
    weather: (json['weather'] as List<dynamic>)
        .map((e) => e as Map<String, dynamic>)
        .toList(),
    base: json['base'] as String,
    main: json['main'] as Map<String, dynamic>,
    visibility: json['visibility'],
    wind: json['wind'] as Map<String, dynamic>,
    clouds: json['clouds'] as Map<String, dynamic>,
    dt: json['dt'],
    sys: json['sys'] as Map<String, dynamic>,
    timezone: json['timezone'],
    id: json['id'],
    cityName: json['cityName'] as String,
    cod: json['cod'],
  );
}

Map<String, dynamic> _$_$_WeatherToJson(_$_Weather instance) =>
    <String, dynamic>{
      'coordinates': instance.coordinates,
      'weather': instance.weather,
      'base': instance.base,
      'main': instance.main,
      'visibility': instance.visibility,
      'wind': instance.wind,
      'clouds': instance.clouds,
      'dt': instance.dt,
      'sys': instance.sys,
      'timezone': instance.timezone,
      'id': instance.id,
      'cityName': instance.cityName,
      'cod': instance.cod,
    };
