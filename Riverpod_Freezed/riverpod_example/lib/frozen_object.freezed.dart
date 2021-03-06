// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'frozen_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FrozenObject _$FrozenObjectFromJson(Map<String, dynamic> json) {
  return _FrozenObject.fromJson(json);
}

/// @nodoc
class _$FrozenObjectTearOff {
  const _$FrozenObjectTearOff();

  _FrozenObject call({int? userId, int? id, String? title, bool? completed}) {
    return _FrozenObject(
      userId: userId,
      id: id,
      title: title,
      completed: completed,
    );
  }

  FrozenObject fromJson(Map<String, Object> json) {
    return FrozenObject.fromJson(json);
  }
}

/// @nodoc
const $FrozenObject = _$FrozenObjectTearOff();

/// @nodoc
mixin _$FrozenObject {
  int? get userId => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  bool? get completed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FrozenObjectCopyWith<FrozenObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FrozenObjectCopyWith<$Res> {
  factory $FrozenObjectCopyWith(
          FrozenObject value, $Res Function(FrozenObject) then) =
      _$FrozenObjectCopyWithImpl<$Res>;
  $Res call({int? userId, int? id, String? title, bool? completed});
}

/// @nodoc
class _$FrozenObjectCopyWithImpl<$Res> implements $FrozenObjectCopyWith<$Res> {
  _$FrozenObjectCopyWithImpl(this._value, this._then);

  final FrozenObject _value;
  // ignore: unused_field
  final $Res Function(FrozenObject) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? completed = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$FrozenObjectCopyWith<$Res>
    implements $FrozenObjectCopyWith<$Res> {
  factory _$FrozenObjectCopyWith(
          _FrozenObject value, $Res Function(_FrozenObject) then) =
      __$FrozenObjectCopyWithImpl<$Res>;
  @override
  $Res call({int? userId, int? id, String? title, bool? completed});
}

/// @nodoc
class __$FrozenObjectCopyWithImpl<$Res> extends _$FrozenObjectCopyWithImpl<$Res>
    implements _$FrozenObjectCopyWith<$Res> {
  __$FrozenObjectCopyWithImpl(
      _FrozenObject _value, $Res Function(_FrozenObject) _then)
      : super(_value, (v) => _then(v as _FrozenObject));

  @override
  _FrozenObject get _value => super._value as _FrozenObject;

  @override
  $Res call({
    Object? userId = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? completed = freezed,
  }) {
    return _then(_FrozenObject(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FrozenObject extends _FrozenObject with DiagnosticableTreeMixin {
  const _$_FrozenObject({this.userId, this.id, this.title, this.completed})
      : super._();

  factory _$_FrozenObject.fromJson(Map<String, dynamic> json) =>
      _$_$_FrozenObjectFromJson(json);

  @override
  final int? userId;
  @override
  final int? id;
  @override
  final String? title;
  @override
  final bool? completed;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FrozenObject(userId: $userId, id: $id, title: $title, completed: $completed)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FrozenObject'))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('completed', completed));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FrozenObject &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.completed, completed) ||
                const DeepCollectionEquality()
                    .equals(other.completed, completed)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(completed);

  @JsonKey(ignore: true)
  @override
  _$FrozenObjectCopyWith<_FrozenObject> get copyWith =>
      __$FrozenObjectCopyWithImpl<_FrozenObject>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FrozenObjectToJson(this);
  }
}

abstract class _FrozenObject extends FrozenObject {
  const factory _FrozenObject(
      {int? userId, int? id, String? title, bool? completed}) = _$_FrozenObject;
  const _FrozenObject._() : super._();

  factory _FrozenObject.fromJson(Map<String, dynamic> json) =
      _$_FrozenObject.fromJson;

  @override
  int? get userId => throw _privateConstructorUsedError;
  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  bool? get completed => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FrozenObjectCopyWith<_FrozenObject> get copyWith =>
      throw _privateConstructorUsedError;
}
