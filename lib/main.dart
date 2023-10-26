import 'package:flutter/material.dart';
import 'pages/intro_page.dart';
import 'package:task_mate/pages/intro_page.dart';
import 'package:task_mate/pages/profile_page.dart';
import 'pages/signin_page.dart';
import 'pages/signup_page1.dart';
import 'pages/signup_page2.dart';
import 'pages/signup_page3.dart';
import 'pages/signup_page4.dart';
import 'pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      routes: {
        '/intro_page.dart': (context) => IntroPage(),
        '/signin_page.dart': (context) => SignInPage(),
        '/signup_page1.dart': (context) => SignUpPage1(),
        '/signup_page2.dart': (context) => SignUpPage2(),
        '/signup_page3.dart': (context) => SignUpPage3(),
        '/home.dart': (context) => Home(),
      },
    );
  }
}
