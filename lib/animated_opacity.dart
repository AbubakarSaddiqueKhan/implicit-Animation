import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedOpacityExample extends StatefulWidget {
  const AnimatedOpacityExample({super.key});

  @override
  State<AnimatedOpacityExample> createState() => _AnimatedOpacityExampleState();
}

class _AnimatedOpacityExampleState extends State<AnimatedOpacityExample> {
  var childOpacity = 0.0;
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          childOpacity = childOpacity == 0.0 ? 1.0 : 0.0;
        });
      },
      child: AnimatedOpacity(
          opacity: childOpacity,
          duration: Duration(seconds: 2),
          child: Container(
            width: 300,
            height: 300,
            color: Color.fromARGB(random.nextInt(0xFF), random.nextInt(0xFF),
                random.nextInt(0xFF), random.nextInt(0xFF)),
          )),
    );
  }
}
