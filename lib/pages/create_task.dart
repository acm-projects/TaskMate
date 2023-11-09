// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:task_mate/components/mybuttonrectangular.dart';
import 'package:task_mate/components/textfield2.dart';
import 'package:task_mate/components/choicebox.dart';

class CreateTaskPage extends StatefulWidget {
  const CreateTaskPage({Key? key}) : super(key: key);

  @override
  _CreateTaskPageState createState() => _CreateTaskPageState();
}

class _CreateTaskPageState extends State<CreateTaskPage> {
  DateTime _dateTime = DateTime.now();
  TimeOfDay _timeOfDay = TimeOfDay.now();
  int selectedChoice = 1;

  void _CreateNewTask() {

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
    showTimePicker(context: context, initialTime: _timeOfDay)
        .then((value) => {
              setState(() {
                _timeOfDay = value!;
              })
            });
  }

  //text editing controllers
  final taskNameController = TextEditingController();
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
                padding: EdgeInsets.only(right: 25, left: 25),
                children: [
                  
                  Row(
                      children: [
                      IconButton(
                          padding: EdgeInsets.all(0),
                          icon: CircleAvatar(
                            backgroundImage:
                                AssetImage('lib/images/profile.png'),
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
                          'Create New Task',
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

                  const SizedBox(height: 15,),
                  
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
                                        _timeOfDay.hour.toString().padLeft(2, '0') +
                                            ':' +
                                            _timeOfDay.minute.toString().padLeft(2, '0'),
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
                          const SizedBox(height: 5,),

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
                    //onTap: _CreateNewTask(),
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
                  ),)
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
