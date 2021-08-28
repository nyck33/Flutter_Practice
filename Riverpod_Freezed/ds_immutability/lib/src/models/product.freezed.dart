// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProductTearOff {
  const _$ProductTearOff();

// ignore: unused_element
  Phone phone({@required String id, @required String name, Color color}) {
    return Phone(
      id: id,
      name: name,
      color: color,
    );
  }

// ignore: unused_element
  Insurance insurance(
      {@required String id, @required String name, @required double quote}) {
    return Insurance(
      id: id,
      name: name,
      quote: quote,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Product = _$ProductTearOff();

/// @nodoc
mixin _$Product {
  String get id;
  String get name;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult phone(String id, String name, Color color),
    @required TResult insurance(String id, String name, double quote),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult phone(String id, String name, Color color),
    TResult insurance(String id, String name, double quote),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult phone(Phone value),
    @required TResult insurance(Insurance value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult phone(Phone value),
    TResult insurance(Insurance value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res>;
  $Res call({String id, String name});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res> implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  final Product _value;
  // ignore: unused_field
  final $Res Function(Product) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
abstract class $PhoneCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory $PhoneCopyWith(Phone value, $Res Function(Phone) then) =
      _$PhoneCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, Color color});
}

/// @nodoc
class _$PhoneCopyWithImpl<$Res> extends _$ProductCopyWithImpl<$Res>
    implements $PhoneCopyWith<$Res> {
  _$PhoneCopyWithImpl(Phone _value, $Res Function(Phone) _then)
      : super(_value, (v) => _then(v as Phone));

  @override
  Phone get _value => super._value as Phone;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object color = freezed,
  }) {
    return _then(Phone(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      color: color == freezed ? _value.color : color as Color,
    ));
  }
}

/// @nodoc
class _$Phone extends Phone {
  const _$Phone({@required this.id, @required this.name, this.color})
      : assert(id != null),
        assert(name != null),
        super._();

  @override
  final String id;
  @override
  final String name;
  @override
  final Color color;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Phone &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(color);

  @JsonKey(ignore: true)
  @override
  $PhoneCopyWith<Phone> get copyWith =>
      _$PhoneCopyWithImpl<Phone>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult phone(String id, String name, Color color),
    @required TResult insurance(String id, String name, double quote),
  }) {
    assert(phone != null);
    assert(insurance != null);
    return phone(id, name, color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult phone(String id, String name, Color color),
    TResult insurance(String id, String name, double quote),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (phone != null) {
      return phone(id, name, color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult phone(Phone value),
    @required TResult insurance(Insurance value),
  }) {
    assert(phone != null);
    assert(insurance != null);
    return phone(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult phone(Phone value),
    TResult insurance(Insurance value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (phone != null) {
      return phone(this);
    }
    return orElse();
  }
}

abstract class Phone extends Product {
  const Phone._() : super._();
  const factory Phone(
      {@required String id, @required String name, Color color}) = _$Phone;

  @override
  String get id;
  @override
  String get name;
  Color get color;
  @override
  @JsonKey(ignore: true)
  $PhoneCopyWith<Phone> get copyWith;
}

/// @nodoc
abstract class $InsuranceCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory $InsuranceCopyWith(Insurance value, $Res Function(Insurance) then) =
      _$InsuranceCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, double quote});
}

/// @nodoc
class _$InsuranceCopyWithImpl<$Res> extends _$ProductCopyWithImpl<$Res>
    implements $InsuranceCopyWith<$Res> {
  _$InsuranceCopyWithImpl(Insurance _value, $Res Function(Insurance) _then)
      : super(_value, (v) => _then(v as Insurance));

  @override
  Insurance get _value => super._value as Insurance;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object quote = freezed,
  }) {
    return _then(Insurance(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      quote: quote == freezed ? _value.quote : quote as double,
    ));
  }
}

/// @nodoc
class _$Insurance extends Insurance {
  const _$Insurance(
      {@required this.id, @required this.name, @required this.quote})
      : assert(id != null),
        assert(name != null),
        assert(quote != null),
        super._();

  @override
  final String id;
  @override
  final String name;
  @override
  final double quote;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Insurance &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.quote, quote) ||
                const DeepCollectionEquality().equals(other.quote, quote)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(quote);

  @JsonKey(ignore: true)
  @override
  $InsuranceCopyWith<Insurance> get copyWith =>
      _$InsuranceCopyWithImpl<Insurance>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult phone(String id, String name, Color color),
    @required TResult insurance(String id, String name, double quote),
  }) {
    assert(phone != null);
    assert(insurance != null);
    return insurance(id, name, quote);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult phone(String id, String name, Color color),
    TResult insurance(String id, String name, double quote),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (insurance != null) {
      return insurance(id, name, quote);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult phone(Phone value),
    @required TResult insurance(Insurance value),
  }) {
    assert(phone != null);
    assert(insurance != null);
    return insurance(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult phone(Phone value),
    TResult insurance(Insurance value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (insurance != null) {
      return insurance(this);
    }
    return orElse();
  }
}

abstract class Insurance extends Product {
  const Insurance._() : super._();
  const factory Insurance(
      {@required String id,
      @required String name,
      @required double quote}) = _$Insurance;

  @override
  String get id;
  @override
  String get name;
  double get quote;
  @override
  @JsonKey(ignore: true)
  $InsuranceCopyWith<Insurance> get copyWith;
}
