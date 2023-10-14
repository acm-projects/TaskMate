// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:task_mate/pages/signin_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            //Background Image
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/images/Background Gradient.png'), // Update with your image path
                  fit: BoxFit.cover, // You can adjust the fit as needed
                ),
              ),
            ),
            //Logo
            Padding(
              padding: EdgeInsets.only(top:343.0),
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
            Text(
              'Turn your to-dos into ta-das',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontFamily: 'Actor',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),

            const SizedBox(height: 134),

            Container(
              width: 181,
              height: 34,
              padding: const EdgeInsets.all(10),
              decoration: ShapeDecoration(
                color: Color(0xFF150000),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: ElevatedButton(
              child: Text(
                "Get Started",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Actor',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              onPressed: (){
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SignIn()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
                'Sign In',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 11,
                  fontFamily: 'Actor',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
            ),
          ],),
      )
    );
  }
}