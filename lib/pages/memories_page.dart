import 'package:flutter/material.dart';
import 'package:task_mate/components/collabtask.dart';
import 'package:task_mate/components/post.dart';
class Memories extends StatelessWidget {
  const Memories({super.key});

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
                  padding: const EdgeInsets.only(right: 25, left: 25),
                  children: [
                    Row(children: [
                      IconButton(
                        padding: const EdgeInsets.only(left: 25),
                        icon: const Icon(Icons.arrow_back_ios_new,
                            size: 25), // Use the Icon widget
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ]),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left:25),
                          child: Text(
                            'My Memories',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Jockey One',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left:25),
                              child: Text(
                                'You have a total of 20 memories!',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: 'Sans-serif',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 25),
                        Post(pfp: 'lib/images/profilebig.png', userName: 'Zubiya', timeSincePost: '3 hours ago', smallPicture: 'lib/images/tasks1.JPG', bigPicture: 'lib/images/tasks2.JPG', progress: 100, caption: 'fridays at cuppa!'),
                        SizedBox(height: 25),
                        Post(pfp: 'lib/images/profilebig.png', userName: 'Zubiya', timeSincePost: '1 week ago', smallPicture: 'lib/images/tasks4.JPG', bigPicture: 'lib/images/tasks5.JPG', progress: 100, caption: 'completed my fishing assignment!'),
                        SizedBox(height: 25),
                        Post(pfp: 'lib/images/profilebig.png', userName: 'Zubiya', timeSincePost: '16 hours ago', smallPicture: 'lib/images/tasks6.JPG', bigPicture: 'lib/images/tasks4.JPG', progress: 70, caption: 'halfway done with my assignment'),
                        SizedBox(height: 25),
                        Post(pfp: 'lib/images/profilebig.png', userName: 'Zubiya', timeSincePost: '4 weeks ago', smallPicture: 'lib/images/tasks3.JPG', bigPicture: 'lib/images/tasks1.JPG', progress: 30, caption: 'discrete mathhhhhhh and took got my steps in'),
                        SizedBox(height: 25,),
                      ],
                    )
                  ],
              ),
                    
                  ],

                )

            )
            ),
          )
      );
  }
}