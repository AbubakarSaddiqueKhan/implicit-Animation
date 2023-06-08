import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedPaddingExample extends StatefulWidget {
  const AnimatedPaddingExample({super.key});

  @override
  State<AnimatedPaddingExample> createState() => _AnimatedPaddingExampleState();
}

class _AnimatedPaddingExampleState extends State<AnimatedPaddingExample> {
  Random randomPaddingValues = Random();

  var childPadding = 10.0;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      GestureDetector(
        onTap: () {
          setState(() {
            childPadding = childPadding == 10.0
                ? randomPaddingValues.nextInt(75).toDouble()
                : 10.0;
          });
        },
        child: AnimatedPadding(
            padding: EdgeInsets.all(childPadding),
            duration: Duration(seconds: 1),
            child: Container(
              width: 400,
              height: 400,
              color: Colors.amber,
            )),
      ),
      Text("Padding is $childPadding")
    ]);
  }
}
