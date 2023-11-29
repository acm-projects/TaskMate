import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:task_mate/pages/collaborate.dart';
import 'package:task_mate/pages/profile_page.dart';
import 'package:task_mate/pages/tasks.dart';
import 'package:task_mate/util/home_page_complete_component.dart';
import 'package:task_mate/components/customsnackbar.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, this.displayText=''}) : super(key: key);
  final String displayText;
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePagePageComponent(),
    TasksPage(),
    CollaboratePage(),
    ProfilePage(),
  ];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if(widget.displayText != '') {
      WidgetsBinding.instance.addPostFrameCallback((_) {ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: CustomSnackBar(
            text: widget.displayText,
          ),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.transparent,
          elevation: 0,
          duration: const Duration(milliseconds : 500)
        ),
      );})
      ;
    }
  }

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
              icon: Icons.playlist_add_check_rounded,
              text: 'My Tasks',
            ),
            GButton(
              icon: Icons.textsms_sharp,
              text: 'Collaborate',
            ),
            GButton(
              icon: Icons.account_circle,
              text: 'Profile',
            ),
            // GButton(
            //   icon: Icons.add_comment_rounded,
            //   text: 'Collaborate',
            // ),
            
          ],
        ),
      ),
    );
  }
}

