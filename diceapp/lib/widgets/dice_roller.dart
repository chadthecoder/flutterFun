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
  int dice1 = 1, dice2 = 6;
  late Random rand;

  void rollDice() {
    rand = Random();
    int randNum1 = rand.nextInt(6) + 1, randNum2 = rand.nextInt(6) + 1;
    setState(() {
      dice1 = randNum1;
      dice2 = randNum2;
    });
    //[diceFiles[randNum1], diceFiles[randNum2]];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$dice1.png',
          width: 200,
        ),
        Image.asset(
          'assets/images/dice-$dice2.png',
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
