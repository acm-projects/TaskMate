import 'package:flutter/material.dart';
import 'package:task_mate/components/collabtask.dart';
class Memories extends StatelessWidget {
  const Memories({super.key});

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
            child: Stack(
              children: [
                ListView(
                  padding: EdgeInsets.only(right: 25, left: 25),
                  children: [
                    Text("Memories"),
                    
                  ],

                )

              ],
            )
            ),
          )
      ),
    );
  }
}