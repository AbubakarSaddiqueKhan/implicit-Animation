import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleExample extends StatefulWidget {
  const AnimatedDefaultTextStyleExample({super.key});

  @override
  State<AnimatedDefaultTextStyleExample> createState() =>
      _AnimatedDefaultTextStyleExampleState();
}

class _AnimatedDefaultTextStyleExampleState
    extends State<AnimatedDefaultTextStyleExample> {
  bool isSelected = false;
  static const maxByteValue = 256;
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    int counter = 0;
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
          counter++;
        });
      },
      child: Center(
        child: Container(
          child: AnimatedDefaultTextStyle(
            child: Text("Animated Text"),
            style: TextStyle(
              // backgroundColor: Color.fromARGB(
              //     random.nextInt(maxByteValue),
              //     random.nextInt(maxByteValue),
              //     random.nextInt(maxByteValue),
              //     random.nextInt(maxByteValue)),
              color: Color.fromARGB(
                  random.nextInt(maxByteValue),
                  random.nextInt(maxByteValue),
                  random.nextInt(maxByteValue),
                  random.nextInt(maxByteValue)),
              fontSize: (random.nextInt(10) + 80).toDouble(),
            ),
            duration: Duration(seconds: 2 /* random.nextInt() */),
          ),
        ),
      ),
    );
  }
}
