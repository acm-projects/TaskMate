import 'package:flutter/material.dart';
import 'pages/intro_page.dart';
import 'pages/signin_page.dart';
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
      home: const Home(),
      routes: {
        '/signin_page.dart': (context) => SignInPage(),
        '/intro_page.dart': (context) => IntroPage(),
      },
    );
  }
}
