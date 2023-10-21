// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:task_mate/pages/signin_page.dart';
import 'package:task_mate/pages/signup_page1.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
                image: AssetImage("lib/images/GroupCorner.png"), 
                fit: BoxFit.cover
          ),
         ),
      child: Center(
        child: Column(
          children: [
            //Background Image
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/Background Gradient.png'), // Update with your image path
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
                onPressed: (){
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpPage1()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
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
              ),
            ),
            const SizedBox(height: 8),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignInPage()),
                  );
              },
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Text(
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
              ),
            
            ),
            
            
          ],),
      )
      )
    );
  }
}