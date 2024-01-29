import 'package:flutter/material.dart';

import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DoceRoller();
  }
}

class _DoceRoller extends State<DiceRoller> {
  var currentDiceRoll = 1;

  void rollDice() {
    setState(
      () {
        currentDiceRoll = randomizer.nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 120,
        ),
        //const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
