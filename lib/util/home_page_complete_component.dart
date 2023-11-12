import 'package:flutter/material.dart';
import 'package:task_mate/components/mybuttonrectangular2.dart';
import 'package:task_mate/pages/post_task.dart';
import 'package:task_mate/components/post.dart';

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
                              icon: const Image(
                                image: AssetImage(
                                  'lib/images/profilebig.png'
                                  ),
                              ),
                              onPressed: () {
                                //add functionality
                              }),

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
                                      fontSize: 20,
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
                                    'Welcome, User',
                                    style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
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
                                    'You have 5 tasks to complete!',
                                    style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
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
                                  height: 141,
                                  width: 159,
                                  padding: EdgeInsets.only(left: 10, right: 0, top: 10, bottom: 10),
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
                                        Text(
                                          'Tasks',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontFamily: 'RobotoBold',
                                          ),
                                        ),

                                        IconButton(
                                          onPressed: () {}, 
                                          icon: Image(image: AssetImage(
                                            'lib/images/plus.png',),
                                            height: 20,
                                            ),
                                          padding: EdgeInsets.zero,
                                          visualDensity: VisualDensity.compact,
                                        )
                                      ],
                                    ),

                                    const SizedBox(height: 3,),

                                    Row(
                                      children: [
                                        Text(
                                          'ACM Presentation',
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
                                          'CS Homework',
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
                                          'My Weekly Shift',
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
                                      height: 68,
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
                                                  '78',
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
                              MaterialPageRoute(builder: (context) => PostTaskPage()),
                            );
                          },
                          ),

                        const SizedBox(height: 12,),

                        Post(pfp: 'lib/images/profilebig.png', userName: 'Zubiya', timeSincePost: '3 hours ago', smallPicture: 'lib/images/tasks1.JPG', bigPicture: 'lib/images/tasks2.JPG', progress: 100, caption: 'fridays at cuppa!'),

                        const SizedBox(height: 25),

                        Post(pfp: 'lib/images/profilebig.png', userName: 'Zubiya', timeSincePost: '16 hours ago', smallPicture: 'lib/images/tasks6.JPG', bigPicture: 'lib/images/tasks4.JPG', progress: 70, caption: 'halfway done with my assignment'),

                        const SizedBox(height: 25,),
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
