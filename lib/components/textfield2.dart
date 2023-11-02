import "package:flutter/material.dart";

class TextField2 extends StatelessWidget {
  final controller;
  final String hintText;

  const TextField2({
    super.key,
    required this.controller,
    required this.hintText,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 0),
      height: 36,
      child: TextField(
        controller: controller,
        textAlign: TextAlign.start,
        style: TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w100,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide(
              width: 1,
              color: Colors.black.withOpacity(0.1)
            ),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.black.withOpacity(0.5),
            fontSize: 14,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w100,)
          ),
      ),
    );
  }
}
