import 'package:flutter/material.dart';
import 'package:flutter_counter/src/ui/counterButtons.dart';
import 'package:flutter_counter/src/ui/counterText.dart';

class CounterBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CounterText(),
          CounterButton(),
        ],
      ),
    );
  }
}
