/*
{
  "userId": 1,
  "id": 1,
  "title": "delectus aut autem",
  "completed": false
}
*/
import 'package:flutter/material.dart';
import 'package:riverpod_example/simple_object.dart';
import './fake_http.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import './serializers.dart';
import 'dart:convert';
import './helloWorld.dart';
import 'package:http/http.dart' as http;
import 'dart:io';
import './frozen_provider.dart';
//import 'dart:convert';

final helloWorldProvider = Provider((_) => 'Hello');

//final fakeHttpClientProvider = Provider((ref) => FakeHttpClient());
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

//final responseProvider = FutureProvider<SimpleObject>((ref) async {
//final httpClient = ref.watch(fakeHttpClientProvider);
//return httpClient.get(authority, path);
//});

void main() {
  //runApp(ProviderScope(child: MyApp()));
  runApp(ProviderScope(child: MyHelloApp()));
}

class MyHelloApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String value = ref.watch(helloWorldProvider);
    //AsyncValue<dynamic> resp = ref.watch(fakeHttpClientProvider);
    final resp = ref.watch(fakeHttpClientProvider);
    print('resp: runtimeType: ${resp.runtimeType}');
    print('resp in UI: $resp');
    String? userId = resp.data?.value?.userId.toString();

    final frozenResp = ref.watch(frozenHttpClientProvider);
    String? frozenTitle = frozenResp.data?.value?.title.toString();

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Example')),
            body: Center(
              child: Column(
                children: [
                  Text(value),
                  Text(userId ?? ''),
                  Text(frozenTitle != null ? 'Frozen title: $frozenTitle' : ''),
                ],
              ),
            )));
  }
}
