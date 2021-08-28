import 'package:ds_immutability/src/pages/freezed_example.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
abstract class Failure with _$Failure {
  const factory Failure(String message) = _Failure;
  const factory Failure.network([@Default("no internet") String message]) =
      NetworkFailure;
}
