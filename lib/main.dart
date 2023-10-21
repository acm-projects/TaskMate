import 'package:flutter/material.dart';
import 'pages/signin_page.dart';
<<<<<<< HEAD
import 'pages/signup_page1.dart';
=======
import 'pages/home.dart';
>>>>>>> 4a9b7bf7cc97b4c1ea633c404e970541d6fed861

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
<<<<<<< HEAD
        '/signup_page1.dart': (context) => const SignUpPage1(),
      },
=======
        '/intro_page.dart': (context)=> IntroPage(),
        },
>>>>>>> 4a9b7bf7cc97b4c1ea633c404e970541d6fed861
    );
  }
}
