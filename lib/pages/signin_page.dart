// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:task_mate/components/mybutton.dart';
import 'package:task_mate/components/textfield1.dart';
import 'package:task_mate/pages/homepageubaid.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:task_mate/firebase/auth.dart';

class SignInPage extends StatefulWidget {
  SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  String? errorMessage = '';

  //text editing controllers
  final emailController = TextEditingController(text: "ubaid@gmail.com");
  final passwordController = TextEditingController(text: "password");

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  //sign user in method (not yet implemented)
  //void signUserIn() {}
  Future<void> signInWithEmailAndPassword() async {
    try {
      await Auth().signInWithEmailAndPassword(
        email:  emailController.text,
        password: passwordController.text,
      );
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
    } on FirebaseAuthException catch(e) {
      //TODO display error message on screen
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
            Row(
              mainAxisAlignment: MainAxisAlignment.start, 
              children: [
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
                    Navigator.pop(context);
                  }),
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
          // //logo
          // const HeaderLogo(),

          const SizedBox(height: 15),

          //sign in text

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

        

              ],
              ),
            ),
          ),

          const SizedBox(height: 30),

          MyButton(
            onPressed: signInWithEmailAndPassword,
            text: 'Sign In',
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
            )
          ),
              ]),
          ),
        ),
      ),
    );
  }
}
