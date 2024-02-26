import 'dart:developer';

import 'package:flutter/material.dart';

Alignment startAlignment = Alignment.topLeft;
Alignment endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, this.color3, {super.key});

  final Color color1;
  final Color color2;
  final Color color3;

  void rollDice() {
    //log('The Button is clicked !');
  }

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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('images/dice-1.png', width: 200),
            const SizedBox(height: 20),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28),
              ),
              onPressed: rollDice,
              child: const Text('Roll Dice'),
            )
          ],
        ),
      ),
    );
  }
}
