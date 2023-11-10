import 'package:flutter/material.dart';
import 'package:task_mate/util/achievements_bar.dart';
import 'package:task_mate/util/friends_bar.dart';
import 'package:task_mate/util/memories.dart';
import 'package:task_mate/util/stats_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key});

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
          child: SingleChildScrollView(
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
                  StatsBar(),
                  const SizedBox(height: 16),

                  // Friends Bar
                  FriendsBar(),
                  const SizedBox(height: 16),
                  // Achievements Bar
                  AchieBar(),
                  const SizedBox(height: 16),

                  // Memories
                  MemoriesBar(),
                  const SizedBox(height: 16),
                  // Ending Image
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset(
                      'lib/images/GraphicProfile.png',
                      height: 140.7,
                    ),
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
