import 'package:flutter/material.dart';

class HeaderLogo extends StatelessWidget {
  const HeaderLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'TaskMate',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.black,
        fontSize: 30,
        fontFamily: 'Jockey One',
        fontWeight: FontWeight.w400,
        height: 0,
      ),
    );
  }
}