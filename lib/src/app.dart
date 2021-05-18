import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter/src/counter/bloc/counter_bloc.dart';
import 'package:flutter_counter/src/pages/counterBody.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("counter"),
          ),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            child: CounterBody(),
          ),
        ),
      ),
    );
  }
}
