import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter/src/counter/bloc/counter_bloc.dart';

class CounterText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterBloc, int>(
      builder: (context, state) {
        return Text(
          state.toString(),
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        );
      },
    );
  }
}
