import 'package:flutter/material.dart';

class AspectRatioDemo extends StatelessWidget {
  const AspectRatioDemo({super.key});

  /// The aspect ratio in Flutter is defined as the ratio of the widget's width
  /// to its height. For example, an aspect ratio of 4:3 means that the
  /// width is 4 units, and the height is 3 units.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AspectRatio(
        aspectRatio: 2 / 9,
        child: Container(
          color: Colors.grey,
          child: const FlutterLogo(),
        ),
      ),
    );
  }
}
