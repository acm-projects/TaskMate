import 'package:flutter/material.dart';
import 'pages/signin_page.dart';
import 'pages/signup_page1.dart';
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
        '/signin_page.dart': (context)=> SignInPage(),
        '/signup_page1.dart': (context) => SignUpPage1(),
      },
    );
  }
}
