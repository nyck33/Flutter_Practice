// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return _Weather.fromJson(json);
}

/// @nodoc
class _$WeatherTearOff {
  const _$WeatherTearOff();

  _Weather call(
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
      required dynamic cod}) {
    return _Weather(
      coordinates: coordinates,
      weather: weather,
      base: base,
      main: main,
      visibility: visibility,
      wind: wind,
      clouds: clouds,
      dt: dt,
      sys: sys,
      timezone: timezone,
      id: id,
      cityName: cityName,
      cod: cod,
    );
  }

  Weather fromJson(Map<String, Object> json) {
    return Weather.fromJson(json);
  }
}

/// @nodoc
const $Weather = _$WeatherTearOff();

/// @nodoc
mixin _$Weather {
  Map<String, dynamic> get coordinates => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get weather => throw _privateConstructorUsedError;
  String get base => throw _privateConstructorUsedError;
  Map<String, dynamic> get main => throw _privateConstructorUsedError;
  dynamic get visibility => throw _privateConstructorUsedError;
  Map<String, dynamic> get wind => throw _privateConstructorUsedError;
  Map<String, dynamic> get clouds => throw _privateConstructorUsedError;
  dynamic get dt => throw _privateConstructorUsedError;
  Map<String, dynamic> get sys => throw _privateConstructorUsedError;
  dynamic get timezone => throw _privateConstructorUsedError;
  dynamic get id => throw _privateConstructorUsedError;
  String get cityName => throw _privateConstructorUsedError;
  dynamic get cod => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherCopyWith<Weather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res>;
  $Res call(
      {Map<String, dynamic> coordinates,
      List<Map<String, dynamic>> weather,
      String base,
      Map<String, dynamic> main,
      dynamic visibility,
      Map<String, dynamic> wind,
      Map<String, dynamic> clouds,
      dynamic dt,
      Map<String, dynamic> sys,
      dynamic timezone,
      dynamic id,
      String cityName,
      dynamic cod});
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res> implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  final Weather _value;
  // ignore: unused_field
  final $Res Function(Weather) _then;

  @override
  $Res call({
    Object? coordinates = freezed,
    Object? weather = freezed,
    Object? base = freezed,
    Object? main = freezed,
    Object? visibility = freezed,
    Object? wind = freezed,
    Object? clouds = freezed,
    Object? dt = freezed,
    Object? sys = freezed,
    Object? timezone = freezed,
    Object? id = freezed,
    Object? cityName = freezed,
    Object? cod = freezed,
  }) {
    return _then(_value.copyWith(
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      base: base == freezed
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String,
      main: main == freezed
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      visibility: visibility == freezed
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as dynamic,
      wind: wind == freezed
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      clouds: clouds == freezed
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      dt: dt == freezed
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sys: sys == freezed
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      timezone: timezone == freezed
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      cityName: cityName == freezed
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      cod: cod == freezed
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$WeatherCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$WeatherCopyWith(_Weather value, $Res Function(_Weather) then) =
      __$WeatherCopyWithImpl<$Res>;
  @override
  $Res call(
      {Map<String, dynamic> coordinates,
      List<Map<String, dynamic>> weather,
      String base,
      Map<String, dynamic> main,
      dynamic visibility,
      Map<String, dynamic> wind,
      Map<String, dynamic> clouds,
      dynamic dt,
      Map<String, dynamic> sys,
      dynamic timezone,
      dynamic id,
      String cityName,
      dynamic cod});
}

/// @nodoc
class __$WeatherCopyWithImpl<$Res> extends _$WeatherCopyWithImpl<$Res>
    implements _$WeatherCopyWith<$Res> {
  __$WeatherCopyWithImpl(_Weather _value, $Res Function(_Weather) _then)
      : super(_value, (v) => _then(v as _Weather));

  @override
  _Weather get _value => super._value as _Weather;

  @override
  $Res call({
    Object? coordinates = freezed,
    Object? weather = freezed,
    Object? base = freezed,
    Object? main = freezed,
    Object? visibility = freezed,
    Object? wind = freezed,
    Object? clouds = freezed,
    Object? dt = freezed,
    Object? sys = freezed,
    Object? timezone = freezed,
    Object? id = freezed,
    Object? cityName = freezed,
    Object? cod = freezed,
  }) {
    return _then(_Weather(
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      base: base == freezed
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String,
      main: main == freezed
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      visibility: visibility == freezed
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as dynamic,
      wind: wind == freezed
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      clouds: clouds == freezed
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      dt: dt == freezed
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sys: sys == freezed
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      timezone: timezone == freezed
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      cityName: cityName == freezed
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      cod: cod == freezed
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Weather extends _Weather with DiagnosticableTreeMixin {
  const _$_Weather(
      {required this.coordinates,
      required this.weather,
      required this.base,
      required this.main,
      required this.visibility,
      required this.wind,
      required this.clouds,
      required this.dt,
      required this.sys,
      required this.timezone,
      required this.id,
      required this.cityName,
      required this.cod})
      : super._();

  factory _$_Weather.fromJson(Map<String, dynamic> json) =>
      _$_$_WeatherFromJson(json);

  @override
  final Map<String, dynamic> coordinates;
  @override
  final List<Map<String, dynamic>> weather;
  @override
  final String base;
  @override
  final Map<String, dynamic> main;
  @override
  final dynamic visibility;
  @override
  final Map<String, dynamic> wind;
  @override
  final Map<String, dynamic> clouds;
  @override
  final dynamic dt;
  @override
  final Map<String, dynamic> sys;
  @override
  final dynamic timezone;
  @override
  final dynamic id;
  @override
  final String cityName;
  @override
  final dynamic cod;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Weather(coordinates: $coordinates, weather: $weather, base: $base, main: $main, visibility: $visibility, wind: $wind, clouds: $clouds, dt: $dt, sys: $sys, timezone: $timezone, id: $id, cityName: $cityName, cod: $cod)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Weather'))
      ..add(DiagnosticsProperty('coordinates', coordinates))
      ..add(DiagnosticsProperty('weather', weather))
      ..add(DiagnosticsProperty('base', base))
      ..add(DiagnosticsProperty('main', main))
      ..add(DiagnosticsProperty('visibility', visibility))
      ..add(DiagnosticsProperty('wind', wind))
      ..add(DiagnosticsProperty('clouds', clouds))
      ..add(DiagnosticsProperty('dt', dt))
      ..add(DiagnosticsProperty('sys', sys))
      ..add(DiagnosticsProperty('timezone', timezone))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('cityName', cityName))
      ..add(DiagnosticsProperty('cod', cod));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Weather &&
            (identical(other.coordinates, coordinates) ||
                const DeepCollectionEquality()
                    .equals(other.coordinates, coordinates)) &&
            (identical(other.weather, weather) ||
                const DeepCollectionEquality()
                    .equals(other.weather, weather)) &&
            (identical(other.base, base) ||
                const DeepCollectionEquality().equals(other.base, base)) &&
            (identical(other.main, main) ||
                const DeepCollectionEquality().equals(other.main, main)) &&
            (identical(other.visibility, visibility) ||
                const DeepCollectionEquality()
                    .equals(other.visibility, visibility)) &&
            (identical(other.wind, wind) ||
                const DeepCollectionEquality().equals(other.wind, wind)) &&
            (identical(other.clouds, clouds) ||
                const DeepCollectionEquality().equals(other.clouds, clouds)) &&
            (identical(other.dt, dt) ||
                const DeepCollectionEquality().equals(other.dt, dt)) &&
            (identical(other.sys, sys) ||
                const DeepCollectionEquality().equals(other.sys, sys)) &&
            (identical(other.timezone, timezone) ||
                const DeepCollectionEquality()
                    .equals(other.timezone, timezone)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.cityName, cityName) ||
                const DeepCollectionEquality()
                    .equals(other.cityName, cityName)) &&
            (identical(other.cod, cod) ||
                const DeepCollectionEquality().equals(other.cod, cod)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(coordinates) ^
      const DeepCollectionEquality().hash(weather) ^
      const DeepCollectionEquality().hash(base) ^
      const DeepCollectionEquality().hash(main) ^
      const DeepCollectionEquality().hash(visibility) ^
      const DeepCollectionEquality().hash(wind) ^
      const DeepCollectionEquality().hash(clouds) ^
      const DeepCollectionEquality().hash(dt) ^
      const DeepCollectionEquality().hash(sys) ^
      const DeepCollectionEquality().hash(timezone) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(cityName) ^
      const DeepCollectionEquality().hash(cod);

  @JsonKey(ignore: true)
  @override
  _$WeatherCopyWith<_Weather> get copyWith =>
      __$WeatherCopyWithImpl<_Weather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WeatherToJson(this);
  }
}

abstract class _Weather extends Weather {
  const factory _Weather(
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
      required dynamic cod}) = _$_Weather;
  const _Weather._() : super._();

  factory _Weather.fromJson(Map<String, dynamic> json) = _$_Weather.fromJson;

  @override
  Map<String, dynamic> get coordinates => throw _privateConstructorUsedError;
  @override
  List<Map<String, dynamic>> get weather => throw _privateConstructorUsedError;
  @override
  String get base => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic> get main => throw _privateConstructorUsedError;
  @override
  dynamic get visibility => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic> get wind => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic> get clouds => throw _privateConstructorUsedError;
  @override
  dynamic get dt => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic> get sys => throw _privateConstructorUsedError;
  @override
  dynamic get timezone => throw _privateConstructorUsedError;
  @override
  dynamic get id => throw _privateConstructorUsedError;
  @override
  String get cityName => throw _privateConstructorUsedError;
  @override
  dynamic get cod => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WeatherCopyWith<_Weather> get copyWith =>
      throw _privateConstructorUsedError;
}
