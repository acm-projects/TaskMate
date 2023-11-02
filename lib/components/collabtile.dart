// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";

class CollabTile extends StatelessWidget {
  final String collabName;

  const CollabTile({
    super.key,
    required this.collabName,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 50,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('lib/images/collabpic.png'),

                    const SizedBox(width: 8,),

                    Text(
                      collabName,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'RobotoBold',
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
