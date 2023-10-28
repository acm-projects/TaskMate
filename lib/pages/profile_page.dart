import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/images/BckGrdProfile.png"),
            fit: BoxFit.cover,
          ),
        ),
          child: SafeArea(
          child: Center(
            child: Column(
              children: [
                // Logo Profile Image
                Image.asset('lib/images/profile.png'),

                const SizedBox(height: 10),

                // UserName
                const Text(
                  'UserName',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontFamily: 'Jockey One',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),

                SizedBox(height: 10),

                // Caption
                const Text(
                  'Profile Page',
                  style: TextStyle(
                    color: Color.fromARGB(255, 61, 61, 61),
                    fontSize: 15,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    height: 0.16,
                  ),
                ),

                SizedBox(height: 15),

                // Stats Bar
                Container(
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
                        const Row(
                          children: [
                            Text(
                              'Stats                      ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 1),
                        Row(
                          mainAxisAlignment: MainAxisAlignment
                              .spaceBetween, // Align text left and number right
                          children: [
                            Text(
                              'TaskMates',
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                                fontSize: 12,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              '50',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                                fontSize: 12,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 1),
                        Row(
                          mainAxisAlignment: MainAxisAlignment
                              .spaceBetween, // Align text left and number right
                          children: [
                            Text(
                              'Tasks Completed     ',
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                                fontSize: 12,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              '20',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                                fontSize: 12,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                height: 0.11,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 1),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Streaks',
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                                fontSize: 12,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              '100',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                                fontSize: 12,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                height: 0.11,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 1),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Tasks Completed     ',
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                                fontSize: 12,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              '50',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                                fontSize: 12,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                height: 0.11,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // Friends Bar
                Container(
                  width: 327,
                  padding: const EdgeInsets.all(15),
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
                      const Row(
                        children: [
                          SizedBox(height: 16),
                          Text(
                            'Friends',
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
                      SizedBox(height: 10),
                      const Row(
                        children: [
                          Text(
                            '10 Friends',
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
                      Container(
                          margin: const EdgeInsets.only(
                              top: 10.0), // Adjust the margin as needed
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 39, // Set the desired height
                                child: Image.asset('lib/images/profile.png'),
                              ),
                              Container(
                                height: 39, // Set the desired height
                                child: Image.asset('lib/images/profile.png'),
                              ),
                              Container(
                                height: 39, // Set the desired height
                                child: Image.asset('lib/images/profile.png'),
                              ),
                              Container(
                                height: 39, // Set the desired height
                                child: Image.asset('lib/images/profile.png'),
                              ),
                              Container(
                                height: 39, // Set the desired height
                                child: Image.asset('lib/images/profile.png'),
                              ),
                            ],
                          ))
                    ],
                  )),
                ),

                // Achievements Bar
                const SizedBox(height: 16),
                Container(
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
                ),

                // Memories
                const SizedBox(height: 16),
                Container(
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
                            'Memories',
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
                            'You have ten posts',
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
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 45,
                                    height: 75, // Set the desired height
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(221, 170, 170, 170),
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    child: Image.asset('lib/images/tasks1.JPG'),
                                  ),
                                  Container(
                                    width: 45,
                                    height: 75, // Set the desired height
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(221, 170, 170, 170),
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    child: Image.asset('lib/images/tasks2.JPG'),
                                  ),
                                  Container(
                                    width: 45,
                                    height: 75, // Set the desired height
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(221, 170, 170, 170),
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    child: Image.asset('lib/images/tasks3.JPG'),
                                  ),
                                  Container(
                                    width: 45,
                                    height: 75, // Set the desired height
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(221, 170, 170, 170),
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    child: Image.asset('lib/images/tasks4.JPG'),
                                  ),
                                  Container(
                                    width: 45,
                                    height: 75, // Set the desired height
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(221, 170, 170, 170),
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    child: Image.asset('lib/images/tasks5.JPG'),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 16),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 45,
                                    height: 75, // Set the desired height
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(221, 170, 170, 170),
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    child: Image.asset('lib/images/tasks5.JPG'),
                                  ),
                                  Container(
                                    width: 45,
                                    height: 75, // Set the desired height
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(221, 170, 170, 170),
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    child: Image.asset('lib/images/tasks1.JPG'),
                                  ),
                                  Container(
                                    width: 45,
                                    height: 75, // Set the desired height
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(221, 170, 170, 170),
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    child: Image.asset('lib/images/tasks2.JPG'),
                                  ),
                                  Container(
                                    width: 45,
                                    height: 75, // Set the desired height
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(221, 170, 170, 170),
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    child: Image.asset('lib/images/tasks3.JPG'),
                                  ),
                                  Container(
                                    width: 45,
                                    height: 75, // Set the desired height
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(221, 170, 170, 170),
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    child: Image.asset('lib/images/tasks6.JPG'),
                                  ),
                                ],
                              ),
                            ],
                          )),
                      
                    ],
                  )),
                ),

                // Ending Image
                const SizedBox(height: 108),
                Image.asset(
                  'lib/images/GraphicProfile.png',  // Replace with the correct image path
                  height: 140.7,
                ),
              ],
            ),
          ),
        ),
      ),
      ),
    );
  }
}
