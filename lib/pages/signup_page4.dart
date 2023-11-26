// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:task_mate/components/mybutton.dart';
import 'package:task_mate/components/textfield1centered.dart';
import 'package:task_mate/pages/homepageubaid.dart';
import 'package:task_mate/pages/intro_page.dart';
import 'package:task_mate/pages/signin_page.dart';
import 'package:task_mate/pages/signup_page2.dart';
import 'package:task_mate/pages/signup_page3.dart';
import 'package:task_mate/pages/signup_page4.dart';
import 'package:task_mate/firebase/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpPage4 extends StatefulWidget {
  final String username, dob, email;

  const SignUpPage4({
    Key? key,
    required this.username,
    required this.dob,
    required this.email
  }) : super(key: key);

  @override
  State<SignUpPage4> createState() => _SignUpPage4State();
}

class _SignUpPage4State extends State<SignUpPage4> {
  String? errorMessage = '';
  //text editing controllers
  final passwordController = TextEditingController();

  Future<void> createUserWithEmailAndPassword() async{
    try {
      await Auth().createUserWithEmailAndPassword(
        email: widget.email,
        password: passwordController.text,
      );
      Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage()));
    } on FirebaseAuthException catch (e) {
      errorMessage = e.message;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/images/whitebg+gradient.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: ListView(
                padding: EdgeInsets.only(right: 25, left: 25),
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    IconButton(
                        icon: Image(
                          image: AssetImage(
                            'lib/images/backarrow.png',
                          ),
                          width: 24,
                          height: 24,
                        ),

                        //iconSize: 24,
                        onPressed: () {
                          //add functionality
                          Navigator.pop(
                            context,
                            MaterialPageRoute(builder: (context) => SignUpPage3(
                              username: widget.username,
                              dob: widget.dob
                            )),
                          );
                        },
                      ),
                  ]),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'TaskMate',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'Jockey One',
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 1.5,
                    color: Color(0xFFBFBFFF),
                  ),
                  const SizedBox(
                    height: 15,
                  ),

                  const SizedBox(height: 15),

                  Container(
                    width: 327,
                    padding: EdgeInsets.only(
                      right: 0,
                      left: 0,
                      top: 25,
                      bottom: 25,
                    ),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            'Create a password for your account',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 20,
                            ),
                          ),

                          const SizedBox(height: 10,), 

                          TextField1Centered(
                              controller: passwordController,
                              hintText: 'Password',
                              obscureText: true
                              ),

                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  MyButton(
                    onPressed: () async { await createUserWithEmailAndPassword();},
                    text: 'Continue',
                  ),

                  const SizedBox(height: 50),

                  Container(
                      child: Container(
                    width: 306,
                    height: 306,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('lib/images/signinpic.png'),
                      ),
                    ),
                  )),
                ]),
          ),
        ),
      ),
    );
  }
}
