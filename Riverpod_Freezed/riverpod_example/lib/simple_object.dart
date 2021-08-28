import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'simple_object.g.dart';

abstract class SimpleObject
    implements Built<SimpleObject, SimpleObjectBuilder> {
  //static getter for serializer object
  static Serializer<SimpleObject> get serializer => _$simpleObjectSerializer;
  //nullability annotations optional
  int get userId;

  int get id;

  String get title;

  bool? get tOrF;

  //BuiltList<String> get aListofStrings;

  //BuiltList<int> get aListofInts;

  //BuiltList<double> get aListofDoubles;

  //private constructor, guarantees that app's code can't directly instantiate
  //instance of SimpleObject, must use factory constructor which uses
  //SimpleObjectBuilder and always produces an instance of derived
  //_$SimpleObject subclass
  SimpleObject._();
  //factory constructor
  factory SimpleObject([updates(SimpleObjectBuilder b)]) = _$SimpleObject;
}
