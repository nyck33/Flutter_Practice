import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/frozen_object.dart';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:convert';

final frozenHttpClientProvider = FutureProvider<FrozenObject?>((ref) async {
  //final Dio dio = Dio();
  //final response = await dio.get('jsonplaceholder.typicode.com/todos/1');
  //print('responseDio: $response');
  final String authority = 'jsonplaceholder.typicode.com';
  final String path = 'todos/1';
  late final thing;
  //await Future.delayed(const Duration(seconds: 1));
  Uri url = Uri.https(authority, path);
  http.Response response = await http.get(url);
  if (response.statusCode == HttpStatus.ok) {
    //json as list
    final FrozenObject obj = FrozenObject.fromJson(json.decode(response.body));
    //final List list = response.data;
    //list of Frozen Objects
    //List<FrozenObject> _resps = [];
    //_resps = list.map((e) => FrozenObject.fromJson(e)).toList();
    thing = obj;
  } else {
    print('error: ${response.statusCode}');
    return null;
  }

  //return 1 Frozen object
  return thing;
});


/*
final fakeHttpClientProvider = FutureProvider<SimpleObject?>((ref) async {
  final jsonResponse;
  final String authority = 'jsonplaceholder.typicode.com';
  final String path = 'todos/1';
  //await Future.delayed(const Duration(seconds: 1));
  Uri url = Uri.https(authority, path);
  http.Response result = await http.get(url);
  if (result.statusCode == HttpStatus.ok) {
    //print(json.decode(result.body));
    jsonResponse = serializers.deserializeWith(
        SimpleObject.serializer, json.decode(result.body));
    //SimpleObject.serializer,
    //result.body);
    print('userId: ${jsonResponse.userId}');
  } else {
    print('error: ${result.statusCode}');
    return null;
  }
  print('jsonResponse in Provider: $jsonResponse');
  return jsonResponse;
});
*/