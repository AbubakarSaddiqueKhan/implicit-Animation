import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({super.key});

  @override
  State<AnimatedContainerExample> createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
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
        child: Center(
          child: AnimatedContainer(
            width: isSelected
                ? random.nextInt(300).toDouble()
                : random.nextInt(300).toDouble(),
            height: isSelected
                ? random.nextInt(300).toDouble()
                : random.nextInt(300).toDouble(),
            color: isSelected
                ? Color.fromARGB(random.nextInt(256), random.nextInt(256),
                    random.nextInt(256), random.nextInt(256))
                : Color.fromARGB(random.nextInt(256), random.nextInt(256),
                    random.nextInt(256), random.nextInt(256)),
            duration: Duration(seconds: random.nextInt(1) + 1),
          ),
        ));
  }
}
