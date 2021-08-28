import 'package:built_value/standard_json_plugin.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'simple_object.dart';

part 'serializers.g.dart';

//instruct built value to create serializers for a list of classes
@SerializersFor(const [
  SimpleObject,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
