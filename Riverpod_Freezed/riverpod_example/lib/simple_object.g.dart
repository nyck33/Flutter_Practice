// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_object.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SimpleObject> _$simpleObjectSerializer =
    new _$SimpleObjectSerializer();

class _$SimpleObjectSerializer implements StructuredSerializer<SimpleObject> {
  @override
  final Iterable<Type> types = const [SimpleObject, _$SimpleObject];
  @override
  final String wireName = 'SimpleObject';

  @override
  Iterable<Object?> serialize(Serializers serializers, SimpleObject object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'userId',
      serializers.serialize(object.userId, specifiedType: const FullType(int)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.tOrF;
    if (value != null) {
      result
        ..add('tOrF')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  SimpleObject deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SimpleObjectBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tOrF':
          result.tOrF = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$SimpleObject extends SimpleObject {
  @override
  final int userId;
  @override
  final int id;
  @override
  final String title;
  @override
  final bool? tOrF;

  factory _$SimpleObject([void Function(SimpleObjectBuilder)? updates]) =>
      (new SimpleObjectBuilder()..update(updates)).build();

  _$SimpleObject._(
      {required this.userId, required this.id, required this.title, this.tOrF})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(userId, 'SimpleObject', 'userId');
    BuiltValueNullFieldError.checkNotNull(id, 'SimpleObject', 'id');
    BuiltValueNullFieldError.checkNotNull(title, 'SimpleObject', 'title');
  }

  @override
  SimpleObject rebuild(void Function(SimpleObjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SimpleObjectBuilder toBuilder() => new SimpleObjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SimpleObject &&
        userId == other.userId &&
        id == other.id &&
        title == other.title &&
        tOrF == other.tOrF;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, userId.hashCode), id.hashCode), title.hashCode),
        tOrF.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SimpleObject')
          ..add('userId', userId)
          ..add('id', id)
          ..add('title', title)
          ..add('tOrF', tOrF))
        .toString();
  }
}

class SimpleObjectBuilder
    implements Builder<SimpleObject, SimpleObjectBuilder> {
  _$SimpleObject? _$v;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  bool? _tOrF;
  bool? get tOrF => _$this._tOrF;
  set tOrF(bool? tOrF) => _$this._tOrF = tOrF;

  SimpleObjectBuilder();

  SimpleObjectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _id = $v.id;
      _title = $v.title;
      _tOrF = $v.tOrF;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SimpleObject other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SimpleObject;
  }

  @override
  void update(void Function(SimpleObjectBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SimpleObject build() {
    final _$result = _$v ??
        new _$SimpleObject._(
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, 'SimpleObject', 'userId'),
            id: BuiltValueNullFieldError.checkNotNull(id, 'SimpleObject', 'id'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, 'SimpleObject', 'title'),
            tOrF: tOrF);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
