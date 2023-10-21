import "package:flutter/material.dart";

class TextField1 extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const TextField1({
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
