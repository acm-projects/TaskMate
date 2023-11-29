import 'dart:async';

import 'package:flutter/material.dart';
import 'package:task_mate/components/task.dart';
import 'package:task_mate/pages/create_task.dart';
import 'package:task_mate/firebase/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:task_mate/models/task_model.dart';
import 'package:task_mate/components/customsnackbar.dart';

class TasksPage extends StatefulWidget {
  const TasksPage({Key? key}) : super(key: key);
  @override
  State<TasksPage> createState() => _TasksPageState();
}
class _TasksPageState extends State<TasksPage> {
  final User? user = Auth().currentUser;
  DatabaseReference _ref = FirebaseDatabase.instance.ref();
  late StreamSubscription _tasksStream;
  late List<TaskMod> _tasks = List.empty(growable: true);
  String debugText = "Debug";

  
  @override
  void initState() {
    super.initState();
    _activateListeners();
  }

  void _activateListeners() {
    _tasksStream = _ref.child("users/${Auth().currentUser?.uid}/tasks").onValue.listen((event) {
      List<dynamic> tasksFromDatabase = event.snapshot.value as List<dynamic>;
      _tasks.clear();
      for (int i = tasksFromDatabase.length - 1; i >= 0; i--) {
        TaskMod newTask = TaskMod(
          name : tasksFromDatabase[i]["name"],
          category : tasksFromDatabase[i]["category"],
          date: DateTime.fromMillisecondsSinceEpoch(tasksFromDatabase[i]["date"]),
          time: TimeOfDay.fromDateTime(DateTime.fromMillisecondsSinceEpoch(tasksFromDatabase[i]["time"])),
          priority: tasksFromDatabase[i]["priority"],
          description: tasksFromDatabase[i]["description"],
        );
        _tasks.add(newTask);
      }
      setState(() {});
    });
  }

  @override
  void deactivate() {
    _tasksStream.cancel();
    super.deactivate();
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
                    Container(
                      height: 1000.0,
                      padding: const EdgeInsets.all(8),
                      child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: _tasks.length,
                      itemBuilder: (BuildContext context, int index) {
                        return _tasks.length == 0 ?
                        const Center(child:Text("No tasks available")) :
                        Task(
                          priority: _tasks[index].priorityAsString(),
                          category: _tasks[index].category,
                          deadline: _tasks[index].dateAsString(),
                          taskName: _tasks[index].name,
                        );
                      }
                    ),
                    )
                    
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.all(25),
                    child: FloatingActionButton.extended(
                      onPressed: () async {
                        final String result = await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CreateTaskPage()),
                        );
                        if(result != '') {
                          ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: CustomSnackBar(
            text: result,
          ),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.transparent,
          elevation: 0,
          duration: const Duration(milliseconds: 500),
        )
        );
                        }
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
