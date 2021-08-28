import 'package:ds_immutability/src/pages/freezed_example.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import './failure.dart';
part 'ui_states.freezed.dart';

@freezed
abstract class UIState with _$UIState {
  const factory UIState.initial() = Initial;
  const factory UIState.loading() = Loading;
  const factory UIState.success() = Success;
  const factory UIState.error(Failure failure) = Error;
}
