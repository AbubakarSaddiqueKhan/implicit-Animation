import 'package:flutter/material.dart';

class AnimatedAlignExample extends StatefulWidget {
  const AnimatedAlignExample({super.key});

  @override
  State<AnimatedAlignExample> createState() => _AnimatedAlignExampleState();
}

class _AnimatedAlignExampleState extends State<AnimatedAlignExample> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.white,
          child: AnimatedAlign(
            alignment: isSelected ? Alignment.topLeft : Alignment.bottomRight,
            duration: Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            child: FlutterLogo(size: 50.0),
          ),
        ),
      ),
    );
  }
}
