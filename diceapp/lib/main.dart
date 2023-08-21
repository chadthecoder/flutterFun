//import 'package:diceapp/styled_text.dart';
import 'package:diceapp/widgets/dice_roller.dart';
import 'package:diceapp/widgets/styled_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets/gradient_container.dart';
import 'actions/roll_dice.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Chad Test Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Color darkGreen = const Color.fromARGB(255, 4, 44, 4);

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return GradientContainer(
      color1: const Color.fromARGB(200, 6, 71, 41),
      color2: const Color.fromARGB(150, 42, 253, 20),
      begin: Alignment.bottomLeft,
      end: Alignment.centerRight,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
          // change color while the other colors stay the same.
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Center(
            child: Text(
              widget.title,
              style: GoogleFonts.permanentMarker(),
            ),
          ),
          backgroundColor: darkGreen,
        ),
        body: const Center(
          child: DiceRoller(),
        ),
      ),
    );
  }
}
