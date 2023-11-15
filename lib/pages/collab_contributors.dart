// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:task_mate/pages/create_collab.dart';
import 'package:task_mate/components/contributor_tile.dart';

class ContributorsPage extends StatelessWidget {
  const ContributorsPage({super.key});

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
                              }),
                        ]),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Contributors',
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
                          
                          const SizedBox(height: 15),

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
                          ContributorTile(contributorName: 'Ridwan'),
                          Divider(
                            height: 1,
                            color: Colors.grey.shade200,
                            thickness: 1.5,
                          ),
                          ContributorTile(contributorName: 'Ubaid'),
                          Divider(
                            height: 1,
                            color: Colors.grey.shade200,
                            thickness: 1.5,
                          ),
                          ContributorTile(contributorName: 'Zubiya'),
                          Divider(
                            height: 1,
                            color: Colors.grey.shade200,
                            thickness: 1.5,
                          ),
                          ContributorTile(contributorName: 'Devansh'),
                          Divider(
                            height: 1,
                            color: Colors.grey.shade200,
                            thickness: 1.5,
                          ),
                          ContributorTile(contributorName: 'Jasper'),
                          Divider(
                            height: 1,
                            color: Colors.grey.shade200,
                            thickness: 1.5,
                          ),
                          ContributorTile(contributorName: 'Shrimoy'),
                        ],
                      )),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.all(25),
                    child: FloatingActionButton.extended(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CreateCollabPage()),
                        );
                      },
                      extendedPadding: EdgeInsets.symmetric(horizontal: 100),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Color(0xFF7E80FF),
                      label: Text(
                        'Add Contributor',
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
      ),
    );
  }
}
