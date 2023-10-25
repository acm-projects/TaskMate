import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DecoratedBox(
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
                  //Logo Profile Image
                  Image.asset('lib/images/profile.png'),

                  const SizedBox(height: 10),

                  //UserName
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

                  //Caption
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

                  //Stats Bar
                  Container(
                    child: Center(
                    child: Column(children: [
                      const Text(
                        'Stats',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      // ---
                      const SizedBox(height: 10),

                      Text(
                        'TaskMates',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontSize: 12,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      // ---
                      const SizedBox(height: 10),

                      Text(
                        'Tasks Completed     ',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontSize: 12,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 10),

                      // ---
                      Text(
                        'Streaks',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontSize: 12,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 10),

                      // ---
                      Text(
                        'Tasks Completed     ',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontSize: 12,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 10),

                      // ---
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
                      const SizedBox(height: 10),
                      // ---
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
                      const SizedBox(height: 10),
                      // ---
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
                      const SizedBox(height: 10),
                      // ---
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
                      )
                    ]),
                  ))
                  //Friends Bar

                  //Daily Goal/Achievements Bar

                  //Achievements Bar

                  //Memories

                  //Ending Image

                  //Nav Bar
                ],
              ),
            ))));
  }
}
