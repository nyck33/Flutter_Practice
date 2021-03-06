//import 'package:freezed/builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'frozen_object.freezed.dart';
part 'frozen_object.g.dart';

@freezed
abstract class FrozenObject with _$FrozenObject {
  //@Default(-1)
  //final int? _userId;
  //@Default(-1)
  //final int? _id;
  //@Default('null')
  //final String? _title;
  //@Default(true)
  //final bool? _completed;

  //int? get userId => this._userId!;
  //int? get id => this._id!;
  //String? get title => this._title!;
  //bool? get completed => this._completed!;

  //inaccessible
  const FrozenObject._();

  const factory FrozenObject(
      {@required int? userId,
      @required int? id,
      @required String? title,
      @required bool? completed}) = _FrozenObject;

  factory FrozenObject.fromJson(Map<String, dynamic> json) =>
      _$FrozenObjectFromJson(json);
}
