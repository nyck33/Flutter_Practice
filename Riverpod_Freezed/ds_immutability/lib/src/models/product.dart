import 'dart:html';

import 'package:ds_immutability/src/pages/freezed_example.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

///tell freezed library that I want this class to be included in the
///generator, include this and annotation when want class generated
///by freezed
part 'product.freezed.dart';

///_$Product is a mixin that freezed generated
///Product factory constructor redirected to _Product which
///once again comes from the part
@freezed
abstract class Product with _$Product {
  //private named constructor with use of
  const Product._();

  //@Assert("name != 'iPhone 13', 'iPhone 13 is not yet released'")
  const factory Product.phone({
    @required String id,
    @required String name,
    Color color,
    //@Default(Colors.green) Color color,
    //@Deprecated("use otherName instead") String name,
  }) = Phone;

  const factory Product.insurance({
    @required String id,
    @required String name,
    @required double quote,
  }) = Insurance;

  @override
  String toString() {
    return "Product ID = $id, Name = $name";
  }
}




/*
@immutable
class Product {
  final String _id;
  String get id => _id;

  final String _name;
  String get name => _name;

  final Color _color;
  Color get color => _color;

  const Product({
    @required String id,
    @required String name,
    Color color = Colors.red,
  })  : _id = id,
        _name = name,
        _color = color,
        assert(id != null),
        assert(name != null);

  Product copyWith({
    String id,
    String name,
    Color color,
  }) =>
      Product(id: id ?? _id, name: name ?? _name, color: color ?? _color);

  @override
  String toString() {
    return "Product: ID = $id, Name = $name";
  }

  @override
  bool operator ==(Object other) =>
      other is Product &&
      other._id == _id &&
      other._name == _name &&
      other._color == _color;

  @override
  int get hashCode => hashValues(_id, _name, _color);
}
*/
