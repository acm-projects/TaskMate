import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:task_mate/pages/collaborate.dart';
import 'package:task_mate/pages/homepageupdated.dart';
import 'package:task_mate/pages/tasks.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    ProfilePage(),
    TasksPage(),
    CollaboratePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: GNav(
          selectedIndex: _selectedIndex,
          onTabChange: _onItemTapped,
          gap: 8,
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.account_circle,
              text: 'Profile',
            ),
            GButton(
              icon: Icons.add,
              text: 'My Tasks',
            ),
            GButton(
              icon: Icons.add_comment_rounded,
              text: 'Collaborate',
            ),
          ],
        ),
      ),
    );
  }
}
