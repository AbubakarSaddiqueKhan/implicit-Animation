import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedCrossFadeExample extends StatefulWidget {
  const AnimatedCrossFadeExample({super.key});

  @override
  State<AnimatedCrossFadeExample> createState() =>
      _AnimatedCrossFadeExampleState();
}

class _AnimatedCrossFadeExampleState extends State<AnimatedCrossFadeExample> {
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
      child: AnimatedCrossFade(
          firstChild: Icon(
            Icons.send,
            color: Color.fromARGB(random.nextInt(0xFF), random.nextInt(0xFF),
                random.nextInt(0xFF), random.nextInt(0xFF)),
            size: random.nextInt(20) + 80.toDouble(),
            // shadows: [
            //   Shadow(color: kDefaultIconDarkColor),
            //   Shadow(color: kDefaultIconLightColor)
            // ]
          ),
          secondChild: Icon(Icons.done,
              color: Color.fromARGB(random.nextInt(0xFF), random.nextInt(0xFF),
                  random.nextInt(0xFF), random.nextInt(0xFF)),
              size: random.nextInt(20) + 80.toDouble()),
          crossFadeState:
              isSelected ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: Duration(seconds: 2)),
    );
  }
}
