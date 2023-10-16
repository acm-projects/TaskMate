import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'TaskMate',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.black,
        fontSize: 48,
        fontFamily: 'Jockey One',
        fontWeight: FontWeight.w400,
        height: 0,
      ),
    );
  }
}
