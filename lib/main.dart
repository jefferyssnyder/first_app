import 'package:flutter/material.dart';

import 'package:first_app/gradient_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> gradientSendColors = [
      Color.fromARGB(255, 221, 208, 244),
      Color.fromARGB(255, 63, 4, 127),
    ];

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('First App'),
        ),
        body: GradientContainer(
          gradientColors: gradientSendColors,
        ),
      ),
    );
  }
}
