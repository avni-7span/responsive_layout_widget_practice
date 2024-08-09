import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_layout_demo/orientation_builder_demo.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: OrientationList(),
    );
  }
}
