// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:task_mate/components/mybuttonrectangular.dart';
import 'package:task_mate/components/textfield2.dart';
import 'package:task_mate/pages/camera_page.dart';
import 'package:task_mate/pages/homepageubaid.dart';
import 'package:task_mate/components/newpost.dart';
import 'package:task_mate/components/task.dart';

class PostTaskPage extends StatelessWidget {

  final captionController = TextEditingController();
  final String imagePath;

  PostTaskPage({super.key, required this.imagePath});



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
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      IconButton(
                          icon: Image(
                            image: AssetImage(
                              'lib/images/backarrow.png',
                            ),
                            width: 24,
                            height: 24,
                          ),

                          //iconSize: 24,
                          onPressed: () {
                            //add functionality
                            Navigator.pop(context);
                          }),
                    ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Post Task?',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: 'Jockey One',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomePage()),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                    backgroundColor: Colors.white,
                                    //padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                                    minimumSize: Size(80, 26),
                                  ),
                                  child: const Text(
                                    "Yes",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => testCamera()),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                    backgroundColor: Colors.black,
                                    //padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                                    minimumSize: Size(80, 26),
                                  ),
                                  child: const Text(
                                    "No",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
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
                    NewPost(
                      controller: captionController,
                      pfp: 'lib/images/ubaid_pfp.jpg',
                      userName: 'Ubaid',
                      //smallPicture: 'lib/images/tasks1.JPG',
                      bigPicture: imagePath,
                      progress: 100,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Task(
                        priority: 'High Priority',
                        category: 'Education',
                        deadline: '11/29/23',
                        taskName: 'ACM Projects')
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
