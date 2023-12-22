import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.black26,
        body: Container(
          //color: Colors.amber,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 32, 87, 206),
                Color.fromARGB(255, 45, 32, 230),
                Color.fromARGB(255, 219, 27, 210),
              ],
            ),
          ),
          child: const Center(
            child: Text('Hello world!'),
          ),
        ),
      ),
    ),
  );
}
