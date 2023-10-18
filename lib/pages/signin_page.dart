// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:task_mate/components/header_logo.dart';
import 'package:task_mate/components/mybutton.dart';
import 'package:task_mate/components/textfield1.dart';


class SignInPage extends StatelessWidget {
  SignInPage({super.key});

  //text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  //sign user in method (not yet implemented)
  //void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(children: [
            //logo
            const HeaderLogo(),

            const SizedBox(height: 50),

            //sign in text
            const Text(
              'Sign In',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontFamily: 'Jockey One',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),

            const SizedBox(height: 30),

            //email text field
            TextField1(
              controller: emailController,
              hintText: 'Email',
              obscureText: false,
            ),

            const SizedBox(height: 30),

            //password text field
            TextField1(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
            ),

            //forgot password?
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 48,
                vertical: 7,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            const MyButton(
              //onTap: signUserIn,
            ),


          ]),
        ),
      ),
    );
  }
}
