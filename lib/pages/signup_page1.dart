import 'package:flutter/material.dart';
import 'package:task_mate/components/header_logo.dart';


class SignUpPage1 extends StatelessWidget {
  SignUpPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const HeaderLogo(),
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),

        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
      ),
    );
  }
}