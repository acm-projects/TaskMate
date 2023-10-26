import 'package:flutter/material.dart';
import 'package:task_mate/components/header_logo.dart';
import 'package:task_mate/components/textfield1.dart';
import 'package:task_mate/pages/home.dart';
import 'package:task_mate/pages/profile_page.dart';
import 'package:task_mate/pages/signup_page3.dart';

class SignUpPage4 extends StatelessWidget {
  SignUpPage4({super.key});

  final signupcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUpPage3()),
              );
            },
            child: const Icon(
              Icons.arrow_back,
            ),
          ),
          title: const HeaderLogo(),
          iconTheme: const IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
          centerTitle: true,
        ),
        body: SafeArea(
            child: Center(
                child: Column(
          children: [
            const SizedBox(height: 30),
            const Text(
              'Enter a password',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontFamily: 'Actor',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
            const SizedBox(height: 30),
            TextField1(
              controller: signupcontroller,
              hintText: 'Password',
              obscureText: true,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurpleAccent[400],
              ),
              child: const Text(
                "Continue",
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
          ],
        )))
        /*
      appBar: AppBar(
        title: const HeaderLogo(),
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: const Text(
        'What\'s your name?',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontSize: 12,
          fontFamily: 'Actor',
          fontWeight: FontWeight.w400,
          height: 0,
        ),
      ),
      */
        );
  }
}
