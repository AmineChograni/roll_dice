import 'package:flutter/material.dart';

import 'gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.black26,
        body: GradientContainer(
          Color.fromARGB(255, 80, 2, 38),
          Color.fromARGB(255, 173, 150, 161),
          Color.fromARGB(255, 69, 15, 122),
        ),
      ),
    ),
  );
}
