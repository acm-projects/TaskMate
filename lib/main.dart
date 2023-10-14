import 'package:flutter/material.dart';
import 'pages/intro_page.dart';
import 'pages/signin_page.dart';

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
        '/signin_page.dart': (context)=>const SignIn(),
        },
    );
  }
}
