import 'package:flutter/material.dart';
import 'dart:math';

var randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var randomDiceRoll = 2;

  void rollDice() {
    setState(() {
      randomDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$randomDiceRoll.png', width: 200),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: rollDice,
          child: const Text(
            'Roll Dice',
            style: TextStyle(
              color: Colors.deepPurpleAccent,
              fontSize: 18,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ],
    );
  }
}
