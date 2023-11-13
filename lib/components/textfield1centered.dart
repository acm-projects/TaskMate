import "package:flutter/material.dart";

class TextField1Centered extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const TextField1Centered({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 48),
      child: TextField(
        autofocus: true,
        textAlign: TextAlign.center,
        controller: controller,
        obscureText: obscureText,
        decoration:  InputDecoration(
          border: const UnderlineInputBorder(),
          hintText: hintText,

        ),
      ),
    );
  }
}