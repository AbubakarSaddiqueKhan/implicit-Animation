import 'package:flutter/material.dart';
import 'package:flutter_implicit_animation/animated_align.dart';
import 'package:flutter_implicit_animation/animated_containner.dart';
import 'package:flutter_implicit_animation/animated_cross_fade.dart';
import 'package:flutter_implicit_animation/animated_default_text_style.dart';
import 'package:flutter_implicit_animation/animated_fractionally_sized_box.dart';
import 'package:flutter_implicit_animation/animated_opacity.dart';
import 'package:flutter_implicit_animation/animated_padding.dart';
import 'package:flutter_implicit_animation/animated_positioned.dart';
import 'package:flutter_implicit_animation/animated_rotation.dart';
import 'package:flutter_implicit_animation/animated_size.dart';
import 'package:flutter_implicit_animation/animated_slide.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(child: AnimatedFractionallySizedBoxExample()));
  }
}
