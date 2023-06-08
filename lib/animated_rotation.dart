import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedRotationExample extends StatefulWidget {
  const AnimatedRotationExample({super.key});

  @override
  State<AnimatedRotationExample> createState() =>
      _AnimatedRotationExampleState();
}

class _AnimatedRotationExampleState extends State<AnimatedRotationExample> {
  bool isSelected = false;
  Random random = Random();
  double turns = 0.0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
          turns += 0.125;
        });
      },
      child: AnimatedRotation(
          turns: turns,
          duration: const Duration(seconds: 2),
          child: Container(
            width: 300,
            height: 300,
            color: Color.fromARGB(random.nextInt(0xFF), random.nextInt(0xFF),
                random.nextInt(0xFF), random.nextInt(0xFF)),
            child: Center(child: Text("Animated Roatation")),
          )),
    );
    ;
  }
}
