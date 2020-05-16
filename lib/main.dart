import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:state_notifier/state_notifier.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StateNotifierProvider<CounterNotifier, CounterState>(
        create: (_) => CounterNotifier(),
        child: HomePage(),
      ),
    );
  }
}

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

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('state_notifier sample'),
      ),
      body: Center(
        child: Text(
          context.select<CounterState, int>((state) => state.count).toString(),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.read<CounterNotifier>().increment(),
        label: Text('1'),
        icon: Icon(Icons.add),
      ),
    );
  }
}