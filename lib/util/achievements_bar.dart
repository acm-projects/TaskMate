import 'package:flutter/material.dart';
class AchieBar extends StatelessWidget {
  const AchieBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                  width: 327,
                  padding: EdgeInsets.all(15),
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
                      )
                    ],
                  ),
                  child: Center(
                      child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(height: 16),
                          Text(
                            'Achievements',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              height: 0.10,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      const Row(
                        children: [
                          Text(
                            '2 Badges',
                            style: TextStyle(
                              color: Color(0xFF808080),
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              height: 0.11,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Container(
                          margin: const EdgeInsets.only(
                              top: 10.0), // Adjust the margin as needed
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 39, // Set the desired height
                                child: Image.asset('lib/images/badge.png'),
                              ),
                              Container(
                                height: 39, // Set the desired height
                                child: Image.asset('lib/images/badge2.png'),
                              ),
                              Container(
                                height: 39, // Set the desired height
                                child: Image.asset('lib/images/badge.png'),
                              ),
                              Container(
                                height: 39, // Set the desired height
                                child: Image.asset('lib/images/badge2.png'),
                              ),
                              Container(
                                height: 39, // Set the desired height
                                child: Image.asset('lib/images/badge.png'),
                              ),
                            ],
                          )),
                      
                    ],
                  )),
                );
  }
}