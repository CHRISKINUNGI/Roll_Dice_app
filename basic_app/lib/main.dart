import 'package:flutter/material.dart';

import 'package:basic_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Roll Dice',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(Color.fromARGB(255, 68, 39, 164), Colors.blue),
      ),
    ),
  );
}
