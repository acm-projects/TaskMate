import 'package:flutter/material.dart';
import 'package:task_mate/components/mybuttonrectangular2.dart';
import 'package:task_mate/pages/post_task.dart';
import 'package:task_mate/components/post.dart';
import 'package:task_mate/pages/create_task.dart';
import 'package:task_mate/pages/camera_page.dart';
import 'package:task_mate/pages/profile_page.dart';

class HomePagePageComponent extends StatelessWidget {
  const HomePagePageComponent({super.key});

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
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  children: [
                    Row(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          IconButton(
                            iconSize: 69,
                            padding: EdgeInsets.all(0),
                            icon: CircleAvatar(
                              radius: 34,
                              backgroundImage: AssetImage('lib/images/ubaid_pfp.jpg'),
                            ),
                            onPressed: () {
                              //add functionality
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => ProfilePage()),
                              // );
                            },
                          ),


                          const SizedBox(width: 15,),

                          const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'TaskMate',
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

                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Welcome, Ubaid!',
                                    style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(height: 1.5),

                              Row(
                                children: [
                                  Text(
                                    'Let\'s turn your to-do\'s into ta-da\'s!',
                                    style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ]),

                        const SizedBox(
                          height: 15,
                        ),

                        Container(
                          height: 1.5,
                          color: Color(0xFFBFBFFF),
                        ),
                        const SizedBox(
                          height: 15,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 145,
                                  width: 159,
                                  padding: EdgeInsets.all(10),
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
                                  child: Column(
                                    children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'Tasks',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontFamily: 'RobotoBold',
                                          ),
                                        ),

                                        IconButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => CreateTaskPage()),
                                            );
                                          }, 
                                          icon: const Image(
                                            image: AssetImage('lib/images/plus.png',),
                                            height: 20,
                                            ),
                                          padding: EdgeInsets.zero,
                                          visualDensity: VisualDensity.compact,
                                        )
                                      ],
                                    ),

                                    Row(
                                      children: [
                                        Text(
                                          'CS Homework',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontFamily: 'Roboto',
                                          ),
                                        ),
                                      ],
                                    ),

                                    const SizedBox(height: 3,),

                                    Row(
                                      children: [
                                        Text(
                                          'Apply for internships',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontFamily: 'Roboto',
                                          ),
                                        ),
                                      ],
                                    ),

                                    const SizedBox(height: 3),

                                    Row(
                                      children: [
                                        Text(
                                          'Clean room',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontFamily: 'Roboto',
                                          ),
                                        ),
                                      ],
                                    ),

                                    const SizedBox(height: 3),

                                    Row(
                                      children: [
                                        Text(
                                          'Weekly Shift',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontFamily: 'Roboto',
                                          ),
                                        ),
                                      ],
                                    ),

                                    const SizedBox(height: 3),


                                    Row(
                                      children: [
                                        Text(
                                          '3 more tasks...',
                                          style: TextStyle(
                                            color: Colors.black.withOpacity(0.5),
                                            fontSize: 10,
                                            fontFamily: 'Roboto',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                  ),
                                ),
                              ],
                            ),

                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 155,
                                      height: 73,
                                      padding: const EdgeInsets.all(12),
                                      decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(6),
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
                                      child: const Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                    'Tasks Completed',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 14,
                                                        fontFamily: 'Roboto',
                                                        fontWeight: FontWeight.w400,
                                                    ),
                                                ),
                                              ],
                                            ),

                                            Row(
                                              children: [
                                                Text(
                                                  '10',
                                                  style: TextStyle(
                                                      color: Colors.green,
                                                      fontSize: 20,
                                                      fontFamily: 'RobotoBold',
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                      ),
                                  )
                                  ],
                                ),

                                const SizedBox(height: 5,),

                                Row(
                                  children: [
                                    Container(
                                      height: 69,
                                      width: 155,
                                      decoration: BoxDecoration(
                                        
                                        image: DecorationImage(
                                          image: AssetImage('lib/images/streakboxtemp.png'),
                                        ),
                                        boxShadow: [ BoxShadow(
                                            color: Color(0x1F000000),
                                            blurRadius: 4,
                                            offset: Offset(0, 4),
                                            spreadRadius: 0,
                                          ),
                                        ]
                                        ),
                                    )
                                  ],
                                )

                              ],
                            )

                          ],
                        ),

                        const SizedBox(height: 20,),
                        
                        //make elevated button
                        MyButton3(
                          text: '+ Create a New Post', 
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => testCamera()),
                            );
                          },
                          ),

                        const SizedBox(height: 12,),

                        Post(pfp: 'lib/images/zubi_profile.jpg', userName: 'Zubiya', timeSincePost: '3 hours ago', smallPicture: 'lib/images/tasks1.JPG', bigPicture: 'lib/images/tasks2.JPG', progress: 100, caption: 'fridays at cuppa!'),

                        const SizedBox(height: 25),

                        Post(pfp: 'lib/images/ridwan_profile.jpg', userName: 'Ridwan', timeSincePost: '5 hours ago', smallPicture: 'lib/images/tasks4.JPG', bigPicture: 'lib/images/tasks6.JPG', progress: 50, caption: 'halfway done with my last assignment'),

                        const SizedBox(height: 25),

                        Post(pfp: 'lib/images/profile_pic_7.jpeg', userName: 'Devansh', timeSincePost: '7 hours ago', smallPicture: 'lib/images/tasks3.JPG', bigPicture: 'lib/images/tasks1.JPG', progress: 80, caption: 'almost finished with my discrete hw'),

                        const SizedBox(height: 25),
                  ],
                ),
              ],
            ),
          ),
        ), 
      ), 
    );
  }
}
