import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedFractionallySizedBoxExample extends StatefulWidget {
  const AnimatedFractionallySizedBoxExample({super.key});

  @override
  State<AnimatedFractionallySizedBoxExample> createState() =>
      _AnimatedFractionallySizedBoxExampleState();
}

class _AnimatedFractionallySizedBoxExampleState
    extends State<AnimatedFractionallySizedBoxExample> {
  bool isSelected = false;
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        width: 500,
        height: 500,
        color: Color.fromARGB(random.nextInt(0xFF), random.nextInt(0xFF),
            random.nextInt(0xFF), random.nextInt(0xFF)),
        child: AnimatedFractionallySizedBox(
            duration: Duration(seconds: 2),
            alignment: isSelected ? Alignment.bottomLeft : Alignment.topRight,
            heightFactor: isSelected ? 0.2 : 0.5,
            widthFactor: isSelected ? 0.5 : 0.2,
            curve: Curves.linear,
            child: Container(
              color: Color.fromARGB(random.nextInt(0xFF), random.nextInt(0xFF),
                  random.nextInt(0xFF), random.nextInt(0xFF)),
            )),
      ),
    );
  }
}
