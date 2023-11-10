import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:task_mate/pages/collaborate.dart';
import 'package:task_mate/pages/profile_page.dart';
import 'package:task_mate/pages/tasks.dart';
import 'package:task_mate/util/home_page_complete_component.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePagePageComponent(),
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
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
        child: GNav(
          selectedIndex: _selectedIndex,
          onTabChange: _onItemTapped,
          activeColor: Color.fromARGB(255, 126, 128, 255),
          tabBackgroundColor: Color.fromARGB(255, 207, 208, 255),
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
              icon: Icons.add_task_outlined,
              text: 'My Tasks',
            ),
            // GButton(
            //   icon: Icons.add_comment_rounded,
            //   text: 'Collaborate',
            // ),
            GButton(
              icon: Icons.textsms_sharp,
              text: 'Collaborate',
            ),
          ],
        ),
      ),
    );
  }
}

