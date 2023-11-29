// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:task_mate/components/mybuttonrectangular2.dart';
import 'package:task_mate/components/textfield2.dart';
import 'package:task_mate/components/choicebox.dart';
import 'package:task_mate/models/task_model.dart';
import 'package:task_mate/firebase/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

class CreateTaskPage extends StatefulWidget {
  const CreateTaskPage({Key? key}) : super(key: key);

  @override
  State<CreateTaskPage> createState() => _CreateTaskPageState();
}

class _CreateTaskPageState extends State<CreateTaskPage> {
  final User? user = Auth().currentUser;
  String? errorMessage = "";
  DateTime _dateTime = DateTime.now();
  TimeOfDay _timeOfDay = TimeOfDay(hour : 11, minute : 59);
  int selectedChoice = 3;

  Future<void> _CreateNewTask() async {
    TaskMod newTask = TaskMod(
      name: taskNameController.text,
      category: categoryController.text,
      date: _dateTime,
      time: _timeOfDay,
      priority: selectedChoice,
      description: descriptionController.text,
    );
    DatabaseReference ref = FirebaseDatabase.instance.ref("users/${Auth().currentUser?.uid}");
    try {
      final snapshot = await ref.child("tasks").get();
      if (snapshot.exists) {
        List<dynamic> tasks = snapshot.value as List<dynamic>;
        List<dynamic> newTasks = List.empty(growable : true);
        for (int i = 0; i < tasks.length; i++) {
          newTasks.add(tasks[i]);
        }
        newTasks.add(newTask.toJson());
        await ref.update({"tasks" : newTasks});
      }
      else {
        await ref.update({"tasks" : [newTask.toJson()]});
      }
      Navigator.pop(context, "New task added");
    }
    on FirebaseException catch (e) {
      errorMessage = e.message;
    }
  }

  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: _dateTime,
      firstDate: DateTime(1950),
      lastDate: DateTime(2050),
    ).then((value) => {
          setState(() {
            _dateTime = value!;
          })
        });
  }

  void _showTimePicker() {
    showTimePicker(context: context, initialTime: _timeOfDay).then((value) => {
          setState(() {
            _timeOfDay = value!;
          })
        });
  }

  //text editing controllers
  // final User? user = Auth().currentUser;
  // final DatabaseReference ref = FirebaseDatabase.instance.ref("users/${Auth().currentUser?.uid}");
  final taskNameController = TextEditingController(text : "CS Homework");
  final categoryController = TextEditingController(text : "Education");
  final descriptionController = TextEditingController(text : "Finish CS 3345 homework");

  @override
  void dispose() {
    taskNameController.dispose();
    categoryController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start, 
                      children: [
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Create New Task',
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
                                  'Task Name',
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
                              controller: taskNameController,
                              hintText: 'Enter Task Name',
                            ),
                            const SizedBox(height: 5),
                            const SizedBox(
                              height: 10,
                            ),
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
                                  'Deadline',
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    MaterialButton(
                                      padding: EdgeInsets.all(0),
                                      onPressed: _showDatePicker,
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side: BorderSide(
                                          width: 1,
                                          color: Colors.black.withOpacity(0.4),
                                        ),
                                      ),
                                      child: Text(
                                        _dateTime.month.toString() +
                                            '/' +
                                            _dateTime.day.toString() +
                                            '/' +
                                            _dateTime.year.toString(),
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w100,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    MaterialButton(
                                      padding: EdgeInsets.all(0),
                                      onPressed: _showTimePicker,
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side: BorderSide(
                                          width: 1,
                                          color: Colors.black.withOpacity(0.4),
                                        ),
                                      ),
                                      child: Text(
                                        _timeOfDay.hour
                                                .toString()
                                                .padLeft(2, '0') +
                                            ':' +
                                            _timeOfDay.minute
                                                .toString()
                                                .padLeft(2, '0'),
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w100,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Row(
                              children: [
                                Text(
                                  'Priority',
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                ChoiceBox(
                                  choiceName: 'Low',
                                  choice: 1,
                                  selectedChoice: selectedChoice,
                                  onTap: () {
                                    setState(() {
                                      selectedChoice = 1;
                                    });
                                  },
                                ),
                                ChoiceBox(
                                  choiceName: 'Medium',
                                  choice: 2,
                                  selectedChoice: selectedChoice,
                                  onTap: () {
                                    setState(() {
                                      selectedChoice = 2;
                                    });
                                  },
                                ),
                                ChoiceBox(
                                  choiceName: 'High',
                                  choice: 3,
                                  selectedChoice: selectedChoice,
                                  onTap: () {
                                    setState(() {
                                      selectedChoice = 3;
                                    });
                                  },
                                ),
                              ],
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
                    MyButton3(
                      text: 'Done', 
                      onPressed: () {
                        _CreateNewTask();
                      },
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
