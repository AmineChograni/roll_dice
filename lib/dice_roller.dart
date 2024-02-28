import 'package:flutter/material.dart';
import 'dart:developer';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'images/dice-1.png';

  void rollDice() {
    setState(() {
      activeDiceImage = 'images/dice-2.png';
    });

    log('The Button is clicked !');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(activeDiceImage, width: 200),
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
    );
  }
}
