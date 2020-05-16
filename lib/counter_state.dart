import 'package:state_notifier/state_notifier.dart';

class CounterState {
  CounterState(this.count);
  int count = 0;
}

class CounterNotifier extends StateNotifier<CounterState> {
  CounterNotifier() : super(CounterState(0));
  void increment() {
    state = CounterState(++state.count);
  }
}

