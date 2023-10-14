// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text(
              'Sign In',
              textAlign: TextAlign.center,
              style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontFamily: 'Jockey One',
              fontWeight: FontWeight.w400,
              height: 0,
              ),
            ),
            const Text(
              "Email", 
              
              )
          ],
        ),
      ),
    );
  }
}