// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";

class ContributorTile extends StatelessWidget {
  final String contributorName;

  const ContributorTile({
    super.key,
    required this.contributorName,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 32,
                          child: Image.asset('lib/images/profile.png'),
                      ),

                      const SizedBox(width: 8,),

                      Text(
                        contributorName,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'RobotoBold',
                        ),
                      ),
                      ],
                    ),

                    Container(
                      width: 120,
                      padding: EdgeInsets.all(7.5),
                      decoration: BoxDecoration(
                        color: Color(0xFF7E80FF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        'Following',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontFamily: 'RobotoBold',
                        ),
                      ),
                      
                    )
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
