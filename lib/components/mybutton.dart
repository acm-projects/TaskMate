import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  //final Function()? onTap;
  final String text;

  const MyButton({
    super.key,
    required this.text,
    /*required this.onTap*/
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(horizontal: 48),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 126, 128, 255),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
