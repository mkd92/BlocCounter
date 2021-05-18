import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter/src/counter/bloc/counter_bloc.dart';

class CounterButton extends StatelessWidget {
  const CounterButton() : super();

  @override
  Widget build(BuildContext context) {
    final _counterBloc = BlocProvider.of<CounterBloc>(context);
    return Container(
        child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              onPressed: () {
                _counterBloc.add(CounterEvent.Increment);
              },
              child: Icon(Icons.add),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              onPressed: () {
                _counterBloc.add(CounterEvent.Decrement);
              },
              child: Icon(Icons.remove),
            ),
          )
        ],
      ),
    ));
  }
}
