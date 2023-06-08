import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedPositionedExample extends StatefulWidget {
  const AnimatedPositionedExample({super.key});

  @override
  State<AnimatedPositionedExample> createState() =>
      _AnimatedPositionedExampleState();
}

class _AnimatedPositionedExampleState extends State<AnimatedPositionedExample> {
  bool isSelected = false;
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          AnimatedPositioned(
              width: isSelected
                  ? random.nextInt(400) + 100
                  : random.nextInt(200) + 50,
              height: isSelected
                  ? random.nextInt(200) + 50
                  : random.nextInt(400) + 100,
              top: isSelected
                  ? random.nextInt(70) + 30
                  : random.nextInt(20) + 30,
              left: 400,
              duration: Duration(seconds: 2),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isSelected = !isSelected;
                  });
                },
                child: Container(
                  child: ColoredBox(
                    color: Color.fromARGB(
                        random.nextInt(0xFF),
                        random.nextInt(0xFF),
                        random.nextInt(0xFF),
                        random.nextInt(0xFF)),
                    child: Text("Animated Positioned",
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromARGB(
                              random.nextInt(0xFF),
                              random.nextInt(0xFF),
                              random.nextInt(0xFF),
                              random.nextInt(0xFF),
                            ),
                            fontSize: random.nextInt(5) + 20,
                            overflow: TextOverflow.ellipsis)),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
