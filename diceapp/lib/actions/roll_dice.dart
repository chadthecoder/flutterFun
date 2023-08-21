//unused due to setState issues

import 'dart:math';

final diceFiles = <String>[
  'assets/images/dice-1.png',
  'assets/images/dice-2.png',
  'assets/images/dice-3.png',
  'assets/images/dice-4.png',
  'assets/images/dice-5.png',
  'assets/images/dice-6.png'
];

List<String> rollDice() {
  Random rand;
  rand = Random();
  int randNum1 = rand.nextInt(6), randNum2 = rand.nextInt(6);
  return [diceFiles[randNum1], diceFiles[randNum2]];
}
