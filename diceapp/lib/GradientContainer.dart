import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
    required this.color1,
    required this.color2,
    required this.start,
    required this.finish,
    required this.child,
  });
  final Color color1, color2;
  final Alignment start, finish;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
          ],
          begin: start,
          end: finish,
        ),
      ),
      child: child,
    );
  }
}
