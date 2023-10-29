import 'package:flutter/material.dart';
import 'package:task_mate/components/task.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        
                
        appBar: AppBar(
          //toolbarHeight: 230.0,
          clipBehavior: Clip.antiAlias,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/images/BckGrdProfile.png"), 
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
          ),     
          backgroundColor: Colors.transparent,
          title: const Text(
            'My Tasks',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontFamily: 'Jockey One',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
          leading: IconButton(
              icon: CircleAvatar(
                backgroundImage: AssetImage('lib/images/profile.png'),
                radius: 25,
                backgroundColor: Colors.grey, 
              ),
              onPressed: () {
                //add functionality
              }
          ),
          centerTitle: true,
          elevation: 0,
          
        ),

        body: SafeArea(
              child: Center(
                child: Stack(
                  children: [
                    ListView(
                      padding: EdgeInsets.only(right: 25, left: 25),
                      children: [
                        
                        const SizedBox(height: 15,),

                        Container(
                          width: 327,
                          padding: EdgeInsets.all(25),
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
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
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
                                        margin: const EdgeInsets.only(top: 5.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              height: 50, // Set the desired height
                                              child: Image.asset('lib/images/icon_blink.png'),
                                            ),
                                            Container(
                                              height: 50, // Set the desired height
                                              child: Image.asset('lib/images/icon_fav.png'),
                                            ),
                                          ],
                                          )
                                      ),
                                  ],
                                ),
                              ],
                            )
                          ),
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
                                      'TaskMates',
                                      style: TextStyle(
                                        color: Colors.black.withOpacity(0.5),
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      '50',
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
                                      '100',
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
                            )
                          ),
                        ),
                        
                        const SizedBox(height: 5),
                      
                        Task(priority: 'High Priority', category: 'Education', deadline: '12/31/23', taskName: 'CS Homework'),

                        Task(priority: 'Medium Priority', category: 'Work', deadline: '11/2/23', taskName: 'My Weekly Shift'),

                        Task(priority: 'Low Priority', category: 'Home', deadline: '10/29/23', taskName: 'Clean room'),

                        Task(priority: 'High Priority', category: 'Education', deadline: '12/31/23', taskName: 'CS Homework'),

                        Task(priority: 'High Priority', category: 'Education', deadline: '12/31/23', taskName: 'CS Homework'),

                        Task(priority: 'High Priority', category: 'Education', deadline: '12/31/23', taskName: 'CS Homework'),

                        Task(priority: 'High Priority', category: 'Education', deadline: '12/31/23', taskName: 'CS Homework'),

                        Task(priority: 'High Priority', category: 'Education', deadline: '12/31/23', taskName: 'CS Homework'),
              
                    
                    
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
              padding: EdgeInsets.all(16),
              child: FloatingActionButton.extended(
                      onPressed: () {
                        // Add the action you want when the button is pressed
                        // For example, navigate to a new screen, perform an action, etc.
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        ),
                      backgroundColor: Color(0xFF7E80FF),
                      label: Text(
                              'Create a New Task',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'RobotoBold',
                              ),
                            ),
                      icon: Icon(Icons.add),
                      
                    ),
                    ),
                  ),
                  ],
                ),
           ),
           
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked, // Position the button as needed
        );
  }
}
