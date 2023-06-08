import 'package:flutter/material.dart';

class AnimatedSlideExample extends StatefulWidget {
  const AnimatedSlideExample({super.key});

  @override
  State<AnimatedSlideExample> createState() => _AnimatedSlideExampleState();
}

class _AnimatedSlideExampleState extends State<AnimatedSlideExample> {
  Offset offset = Offset.zero;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    width: 1000,
                    height: 500,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(50.0),
                    child: AnimatedSlide(
                      offset: offset,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                      child: const FlutterLogo(size: 100.0),
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    Text('Y'),
                    Expanded(
                      child: RotatedBox(
                        quarterTurns: 1,
                        child: Slider(
                          min: -5.0,
                          max: 5.0,
                          value: offset.dy,
                          onChanged: (double value) {
                            setState(() {
                              offset = Offset(offset.dx, value);
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'X',
              ),
              Expanded(
                child: Slider(
                  min: -5.0,
                  max: 5.0,
                  value: offset.dx,
                  onChanged: (double value) {
                    setState(() {
                      offset = Offset(value, offset.dy);
                    });
                  },
                ),
              ),
              const SizedBox(width: 48.0),
            ],
          ),
        ],
      ),
    );
    // );
    //Row(children: [
    //   Container(
    //     alignment: Alignment.center,
    //     padding: const EdgeInsets.all(75.0),
    //     child: AnimatedSlide(
    //         offset: offsetValue,
    //         duration: Duration(seconds: 1),
    //         child: const FlutterLogo(
    //           size: 50,
    //         )),
    //   ),
    //   Text(
    //     "Y",
    //     style: TextStyle(
    //       color: Colors.lime,
    //       fontSize: 25,
    //     ),
    //   ),
    //   Slider(
    //       max: 100,
    //       divisions: 10,
    //       value: offsetValue.dy,
    //       label: offsetValue.dx.toString(),
    //       onChanged: ((double value) {
    //         offsetValue = Offset(offsetValue.dx, value);
    //       })),
    //   Text(
    //     "X",
    //     style: TextStyle(
    //       color: Colors.lime,
    //       fontSize: 25,
    //     ),
    //   ),
    //   Slider(
    //       max: 100,
    //       divisions: 10,
    //       label: offsetValue.dy.toString(),
    //       value: offsetValue.dy,
    //       onChanged: ((double value) {
    //         offsetValue = Offset(value, offsetValue.dy);
    //       }))
    // ]);
  }
}
