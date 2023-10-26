import 'package:flutter/material.dart';
import 'package:task_mate/components/header_logo.dart';
import 'package:task_mate/pages/intro_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  void navigateToNextPage(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const IntroPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    navigateToNextPage(context);
    return const Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
                image: AssetImage("lib/images/BckImg.jpg"), 
                fit: BoxFit.contain
          ),
         ),
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 350),
              child: Text(
                  'TaskMate',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 48,
                    fontFamily: 'Jockey One',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
            ),
          ],
        ),
      )
      )
    );
  }
}