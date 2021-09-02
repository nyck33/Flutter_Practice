import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';
//part 'failure.g.dart';

@freezed
abstract class Failure with _$Failure {
  const factory Failure(String message) = _Failure;
  const factory Failure.network([@Default("no connection") String message]) =
      NetworkFailure;
}
