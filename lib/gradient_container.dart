import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Center(
        child: myCustomText('test'),
      ),
    );
  }

  Widget myCustomText(String msg) {
    return Text(
      msg,
      style: const TextStyle(
        color: Colors.white70,
        //backgroundColor: Colors.amber,
        fontSize: 30,
        fontWeight: FontWeight.w800,
        fontStyle: FontStyle.italic,
        letterSpacing: -2,
        wordSpacing: 8,
        //height: 10,
        shadows: [
          Shadow(
            color: Colors.amber,
            offset: Offset(5, 10),
            blurRadius: 10,
          ),
          Shadow(
            color: Color.fromARGB(255, 48, 47, 47),
            offset: Offset(-5, 10),
            blurRadius: 10,
          ),
        ],
      ),
    );
  }
}
