/*import 'package:flutter/material.dart';
import 'package:task_mate/components/collabtile.dart';
import 'package:task_mate/pages/create_collab.dart';

class NavBar extends StatelessWidget {
  NavBar({super.key});

  int _currentIndex = 0;
  final List<BottomNavigationBarItem> _navItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: 'Search',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Profile',
    ),
  ];

  void _onItemTapped(int index) {
    // Handle item selection here.
    setState(() {
      _currentIndex = index;
    });
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
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  children: [
                    Row(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
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

                          //couldn't figure how to make title automatically centered so it's hardcoded
                          SizedBox(
                            width: 59,
                          ),

                          Text(
                            'Collaborate',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontFamily: 'Jockey One',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ]),

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
                          CollabTile(collabName: 'Our CS Project'),
                          Divider(
                            height: 1,
                            color: Colors.grey.shade200,
                            thickness: 1.5,
                          ),
                          CollabTile(collabName: 'Our Family Chores'),
                          Divider(
                            height: 1,
                            color: Colors.grey.shade200,
                            thickness: 1.5,
                          ),
                          CollabTile(collabName: 'Our Gym Group'),
                          Divider(
                            height: 1,
                            color: Colors.grey.shade200,
                            thickness: 1.5,
                          ),
                          CollabTile(collabName: 'Our Collaboration'),
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
                        'Create a New Collaboration',
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

      bottomNavigationBar: BottomNavigationBar(
          items: _navItems,
          currentIndex: _currentIndex,
          onTap: _onItemTapped,
    );
  }
}
*/
