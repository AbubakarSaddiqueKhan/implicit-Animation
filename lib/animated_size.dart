import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedSizeExample extends StatefulWidget {
  const AnimatedSizeExample({super.key});

  @override
  State<AnimatedSizeExample> createState() => _AnimatedSizeExampleState();
}

class _AnimatedSizeExampleState extends State<AnimatedSizeExample> {
  bool isSelected = false;
  Random _random = Random();
  double childSize = 50.0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          childSize = isSelected
              ? _random.nextInt(100) + 300.toDouble()
              : _random.nextInt(100) + 300.toDouble();
          isSelected = !isSelected;
        });
      },
      child: AnimatedSize(
        duration: Duration(seconds: 1),
        curve: Curves.linear,
        child: Container(
          width: childSize,
          height: childSize,
          color: Color.fromARGB(_random.nextInt(0xFF), _random.nextInt(0xFF),
              _random.nextInt(0xFF), _random.nextInt(0xFF)),
          child: Text("Animated Size Widget of size : ${childSize.toString()} ",
              softWrap: true, overflow: TextOverflow.ellipsis),
        ),
      ),
    );
  }
}
