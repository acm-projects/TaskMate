// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:task_mate/components/collabtask.dart';
import 'package:task_mate/components/mybuttonrectangular.dart';
import 'package:task_mate/components/textfield2.dart';
import 'package:task_mate/components/choicebox.dart';
import 'package:task_mate/components/task.dart';
import 'package:task_mate/components/collabtile.dart';
import 'package:task_mate/pages/collab_attachments.dart';
import 'package:task_mate/pages/collab_contributors.dart';

class CollaborationPage extends StatefulWidget {
  const CollaborationPage({Key? key}) : super(key: key);

  @override
  _CollaborationPageState createState() => _CollaborationPageState();
}

class _CollaborationPageState extends State<CollaborationPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
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
                    Row(children: [
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
                            Navigator.pop(context);
                          }),
                    ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'ACM Projects',
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
                      padding: EdgeInsets.only(
                        right: 12,
                        left: 12,
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
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ContributorsPage()),
                                );
                              },
                              child: Container(
                                height: 64,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 12),
                                  //child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Column(
                                            children: [
                                              Image.asset(
                                                'lib/images/contributoricon.png',
                                                width: 32,
                                                height: 32,
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    'Contributors',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                      fontFamily: 'RobotoBold',
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 3,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    'Ridwan, Ubaid, Zubiya, Jasper, Shrimoy, Devansh',
                                                    style: TextStyle(
                                                      color: Colors.black
                                                          .withOpacity(0.5),
                                                      fontSize: 12,
                                                      fontFamily: 'Roboto',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            //),
                            Divider(
                              height: 1,
                              color: Colors.grey.shade200,
                              thickness: 1.5,
                            ),
                            GestureDetector(
                               onTap: () {},
                              child: Container(
                                height: 64,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 12),
                                  //child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Column(
                                            children: [
                                              Image.asset(
                                                'lib/images/messagesicon.png',
                                                width: 32,
                                                height: 32,
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    'Messages',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                      fontFamily: 'RobotoBold',
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 3,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    '3 new messages',
                                                    style: TextStyle(
                                                      color: Colors.black
                                                          .withOpacity(0.5),
                                                      fontSize: 12,
                                                      fontFamily: 'Roboto',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Divider(
                              height: 1,
                              color: Colors.grey.shade200,
                              thickness: 1.5,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AttachmentsPage()),
                                );
                              },
                              child: Container(
                                height: 64,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 12),
                                  //child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Column(
                                            children: [
                                              Image.asset(
                                                'lib/images/attachmentsicon.png',
                                                width: 32,
                                                height: 32,
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    'Attachments',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                      fontFamily: 'RobotoBold',
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 3,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    '2 attachments',
                                                    style: TextStyle(
                                                      color: Colors.black
                                                          .withOpacity(0.5),
                                                      fontSize: 12,
                                                      fontFamily: 'Roboto',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xFF5963FF),
                              borderRadius: BorderRadius.circular(10)),
                          child: TabBar(
                            indicator: BoxDecoration(
                              color: Color(0xFF7E80FF),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            controller: _tabController,
                            isScrollable: true,
                            labelPadding: EdgeInsets.zero,
                            //labelPadding: EdgeInsets.only(right: 44, left: 44),
                            tabAlignment: TabAlignment.start,
                            tabs: [
                              Tab(
                                child: Container(
                                  width: 168,
                                child: Text(
                                  'Personal Tasks',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'RobotoBold',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              ),
                              Tab(
                                child: Container(
                                  width: 168,
                                  child: Text(
                                    'Group Tasks',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontFamily: 'RobotoBold',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ),
                    
                    Container(
                      height: 300,
                      width: 400,
                        child: TabBarView(
                        controller: _tabController,
                        children: [
                          ListView(
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            children: [
                              TaskTile(
                                priority: 'High Priority',
                                deadline: '11/7/23',
                                taskName: 'Code Homepage'),
                              TaskTile(
                                priority: 'Medium Priority',
                                deadline: '10/12/23',
                                taskName: 'Figma Design'),
                              TaskTile(
                                priority: 'High Priority',
                                deadline: '11/15/23',
                                taskName: 'Presentation Script'),
                            ],
                          ),
                          ListView(
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            children: [
                              TaskTile(
                                priority: 'High Priority',
                                deadline: '11/14/23',
                                taskName: 'Presentation Practice'),
                              TaskTile(
                                priority: 'High Priority',
                                deadline: '11/12/23',
                                taskName: 'Finish Frontend pages'),
                              TaskTile(
                                priority: 'High Priority',
                                deadline: '11/20/23',
                                taskName: 'Integrate Frontend and Backend'),
                            ],
                          ),
                          
                        ],
                      ),
                    ),
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
