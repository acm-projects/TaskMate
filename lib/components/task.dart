// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";

class Task extends StatelessWidget {
  //final Function()? status;
  final String taskName;
  final String priority;
  final String category;
  final String deadline;

  const Task({
    super.key,
    //required this.status,
    required this.priority,
    required this.category,
    required this.deadline,
    required this.taskName,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //status
      child: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 12),
          child: Center(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      taskName,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () {
                          /*change status*/
                        },
                        icon: CircleAvatar(
                          backgroundImage: AssetImage("lib/images/tickcircle.png"),
                          radius: 15,
                          
                        ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: ShapeDecoration(
                          color: Color(0xFFCDCDFF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          )),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            priority,
                            style: TextStyle(
                              color: Color(0xFF808080),
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: ShapeDecoration(
                          color: Color(0xFFCDE4FF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          )),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            category,
                            style: TextStyle(
                              color: Color(0xFF808080),
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: ShapeDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                              side: BorderSide(
                                  width: 0.50, color: Color(0xFF808080)))),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            deadline,
                            style: TextStyle(
                              color: Color(0xFF808080),
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
