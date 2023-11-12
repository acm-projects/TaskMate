import 'package:flutter/material.dart';

class MyButton3 extends StatelessWidget {
  final Function()? onPressed;
  final String text;
  

  MyButton3({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF7E80FF),
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ) 
        ),
      child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 12,
        ),
      ),
    );
  }
}
