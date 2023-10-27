import 'package:flutter/material.dart';
import 'package:task_mate/components/header_logo.dart';
import 'package:task_mate/pages/intro_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  void navigateToNextPage(BuildContext context) {
  Future.delayed(const Duration(seconds: 2), () {
    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => IntroPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(1.0, 0.0);
          const end = Offset.zero;
          const curve = Curves.ease;
          var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          var offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      ),
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