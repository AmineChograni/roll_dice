import 'package:flutter/material.dart';

Alignment startAlignment = Alignment.topLeft;
Alignment endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, this.color3, {super.key});

  final Color color1;
  final Color color2;
  final Color color3;

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.amber,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: [color1, color2, color3],
        ),
      ),
      child: Center(
        child: myCustomText('Hello world!'),
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
