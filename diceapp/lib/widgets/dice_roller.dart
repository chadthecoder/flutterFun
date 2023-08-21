import 'package:flutter/material.dart';
//import 'package:diceapp/actions/roll_dice.dart';
import 'styled_text.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  final Color darkGreen = const Color.fromARGB(255, 4, 44, 4);
  final diceFiles = <String>[
    'assets/images/dice-1.png',
    'assets/images/dice-2.png',
    'assets/images/dice-3.png',
    'assets/images/dice-4.png',
    'assets/images/dice-5.png',
    'assets/images/dice-6.png'
  ];
  String dice1 = 'assets/images/dice-1.png', dice2 = 'assets/images/dice-6.png';

  void rollDice() {
    Random rand;
    rand = Random();
    int randNum1 = rand.nextInt(6), randNum2 = rand.nextInt(6);
    setState(() {
      dice1 = diceFiles[randNum1];
      dice2 = diceFiles[randNum2];
    });
    //[diceFiles[randNum1], diceFiles[randNum2]];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          dice1,
          width: 200,
        ),
        Image.asset(
          dice2,
          width: 200,
        ),
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
            backgroundColor: darkGreen,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // <-- Radius
            ),
            //shape: const CircleBorder(),
            //padding: const EdgeInsets.all(24),
            //fixedSize: const Size(190, 190),
          ),
          child: const StyledText('Roll Dice!'),
        ),
      ],
    );
  }
}
