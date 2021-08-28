import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/frozen_object.dart';
import 'package:dio/dio.dart';

final frozenHttpClientProvider = FutureProvider<FrozenObject?>((ref) async {
  final Dio dio = Dio();
  final response = await dio.get('jsonplaceholder.typicode.com/todos/1');
  final List list = response.data;
  List<FrozenObject> _resps = [];
  _resps = list.map((e) => FrozenObject.fromJson(e)).toList();
  final thing = _resps.first;

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