import 'package:flutter/material.dart';
import 'package:task_mate/pages/create_task.dart';
import 'package:task_mate/util/tasks_bar.dart';
import 'package:task_mate/util/tasks_completed_bar.dart';
import 'package:task_mate/util/streak_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/images/topBackground.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            // top welcome part
            SizedBox(height: 50),
            Container(
              // separates into:
              // 1: profile picture
              // 2: Taskmate welcome text
              child: Row(
                children: [
                  SizedBox(width: 10),
                  // left: profile picture
                  Column(
                    children: [
                      Image.asset('lib/images/profile.png'),
                    ],
                  ),
                  SizedBox(width: 10),
                  // right: welcome text
                  const Column(
                    children: [
                      Text(
                        'TaskMate',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontFamily: 'Jockey One',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Welcome, User',
                        style: TextStyle(
                          color: Color.fromARGB(255, 61, 61, 61),
                          fontSize: 15,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          height: 0.16,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'You have 5 tasks to complete!',
                        style: TextStyle(
                          color: Color.fromARGB(255, 61, 61, 61),
                          fontSize: 15,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          height: 0.16,
                        ),
                      ),
                      SizedBox(height: 15),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              child: const Row(
                children: [
                  /*
                  left: list of tasks
                  right: 2 columns:
                    tasks completed
                    streak
                  */
                  TasksBar(),
                  SizedBox(width: 2),
                  Column(
                    children: [
                      TasksCompletedBar(),
                      SizedBox(height: 2),
                      StreakBar(),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CreateTaskPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurpleAccent[400],
                ),
                child: const Text(
                  "Create A New Task",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'Actor',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
