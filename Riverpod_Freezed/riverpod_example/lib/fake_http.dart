import 'package:riverpod_example/main.dart';

import './serializers.dart';
import './simple_object.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:convert';

class FakeHttpClient {
  Future<SimpleObject> get(String authority, String path) async {
    dynamic jsonResponse;
    //await Future.delayed(const Duration(seconds: 1));
    Uri url = Uri.https(authority, path);
    http.Response result = await http.get(url);
    if (result.statusCode == HttpStatus.ok) {
      //print(result);
      jsonResponse = serializers.deserializeWith(
          SimpleObject.serializer, json.decode(result.body));
    } else {
      print('error: ${result.statusCode}');
    }
    //print(jsonResponse);
    return jsonResponse;
  }
}
