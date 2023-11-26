import 'package:flutter/material.dart';
import 'package:task_mate/components/task.dart';
import 'package:task_mate/pages/create_task.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({super.key});

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
                    Row(children: [
                      IconButton(
                          padding: EdgeInsets.all(0),
                          icon: CircleAvatar(
                            backgroundImage:
                                AssetImage('lib/images/profile_pic_6.jpeg'),
                            backgroundColor: Colors.grey,
                          ),
                          iconSize: 45,
                          onPressed: () {
                            //add functionality
                          }),
                    ]),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          'My Tasks',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontFamily: 'Jockey One',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 1.5,
                      color: Color(0xFFBFBFFF),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
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
                          ),
                        ],
                      ),
                      child: Center(
                          child: Column(
                        children: [
                          const Row(
                            children: [
                              Text(
                                'Achievements',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'RobotoBold',
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 1),
                          Row(
                            children: [
                              Text(
                                '2 Badges',
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
                            children: [
                              const SizedBox(height: 5),
                              Container(
                                  //margin: const EdgeInsets.only(top: 5.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 50, // Set the desired height
                                        child: Image.asset(
                                            'lib/images/icon_blink.png'),
                                      ),
                                      Container(
                                        height: 50, // Set the desired height
                                        child: Image.asset(
                                            'lib/images/icon_fav.png'),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                        ],
                      )),
                    ),
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
                          const Row(
                            children: [
                              Text(
                                'Stats',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'RobotoBold',
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
                                '25',
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
                                '20',
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
                                'Streaks',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                  fontSize: 12,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                '10',
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
                        ],
                      )),
                    ),
                    const SizedBox(height: 5),
                    Task(
                        priority: 'High Priority',
                        category: 'Education',
                        deadline: '12/4/23',
                        taskName: 'CS Homework'),
                    Task(
                        priority: 'High Priority',
                        category: 'Work',
                        deadline: '11/29/23',
                        taskName: 'Apply for internships'),
                    Task(
                        priority: 'Low Priority',
                        category: 'Home',
                        deadline: '12/5/23',
                        taskName: 'Clean room'),
                    Task(
                        priority: 'High Priority',
                        category: 'Work',
                        deadline: '11/27/23',
                        taskName: 'Weekly Shift'),
                    Task(
                        priority: 'Medium Priority',
                        category: 'Education',
                        deadline: '11/18/23',
                        taskName: 'Discrete Homework'),
                    Task(
                        priority: 'Medium Priority',
                        category: 'Education',
                        deadline: '12/2/23',
                        taskName: 'Advisor Meeting'),
                    Task(
                        priority: 'High Priority',
                        category: 'Education',
                        deadline: '11/27/23',
                        taskName: 'Calc DHW'),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.all(25),
                    child: FloatingActionButton.extended(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CreateTaskPage()),
                        );
                      },
                      extendedPadding: EdgeInsets.symmetric(horizontal: 100),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Color(0xFF7E80FF),
                      label: Text(
                        'Create a New Task',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'RobotoBold',
                        ),
                      ),
                      icon: Icon(Icons.add, color: Colors.white,),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
