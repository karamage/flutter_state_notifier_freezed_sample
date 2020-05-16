import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'counter_state.freezed.dart';
part 'counter_state.g.dart';

@freezed
abstract class CounterState with _$CounterState {
  const factory CounterState({
    @Default(0) int count,
  }) = _CounterState;
  factory CounterState.fromJson(Map<String, dynamic> json) => _$CounterStateFromJson(json);
}

class CounterStateNotifier extends StateNotifier<CounterState> {
  CounterStateNotifier() : super(const CounterState()) {}
  increment() => state = state.copyWith(count: state.count + 1);
}

