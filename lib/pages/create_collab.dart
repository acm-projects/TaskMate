// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:task_mate/components/mybuttonrectangular.dart';
import 'package:task_mate/components/textfield2.dart';
import 'package:task_mate/components/choicebox.dart';

class CreateCollabPage extends StatefulWidget {
  const CreateCollabPage({Key? key}) : super(key: key);

  @override
  _CreateCollabPageState createState() => _CreateCollabPageState();
}

class _CreateCollabPageState extends State<CreateCollabPage> {
  //text editing controllers
  final collabNameController = TextEditingController();
  final contributorController = TextEditingController();
  final categoryController = TextEditingController();
  final descriptionController = TextEditingController();

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
                  padding: EdgeInsets.only(right: 25, left: 24),
                  children: [
                    Row(
                      children: [
                      IconButton(
                        padding: const EdgeInsets.only(left: 0),
                        icon: const Icon(Icons.arrow_back_ios_new,
                            size: 25), // Use the Icon widget
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ]),
                    Row(
                      children: [
                        Text(
                          'Create New Collaboration',
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
                    Container(
                      height: 1.5,
                      color: Color(0xFFBFBFFF),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 327,
                      padding: EdgeInsets.only(
                        right: 15,
                        left: 15,
                        top: 25,
                        bottom: 25,
                      ),
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
                                  'Collaboration Name',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            TextField2(
                              controller: collabNameController,
                              hintText: 'Enter Collaboration Name',
                            ),

                            const SizedBox(height: 10),

                            const Row(
                              children: [
                                Text(
                                  'Contributors',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            TextField2(
                              controller: contributorController,
                              hintText: 'Search Name',
                            ),

                            const SizedBox(height: 10,),

                            const Row(
                              children: [
                                Text(
                                  'Category',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            TextField2(
                              controller: categoryController,
                              hintText: 'Enter Category',
                            ),
                            
                            const SizedBox(height: 10),
                            
                            const Row(
                              children: [
                                Text(
                                  'Description',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            TextField2(
                              controller: descriptionController,
                              hintText: 'Enter Description',
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(children: [
                              Text(
                                'Max 200 characters',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                  fontSize: 12,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ]),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    MyButton2(
                      //onTap: 
                      text: 'Done',
                    ),

                    const SizedBox(height: 40),

                    SizedBox(
                      width: 223,
                      height: 180,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('lib/images/createtaskpic.png'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    )
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
