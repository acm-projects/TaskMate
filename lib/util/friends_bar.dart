import 'package:flutter/material.dart';
import 'package:task_mate/pages/friends_page.dart';

class FriendsBar extends StatefulWidget {
  const FriendsBar({Key? key}) : super(key: key);

  @override
  _FriendsBarState createState() => _FriendsBarState();
}

class _FriendsBarState extends State<FriendsBar> {
  bool isHovered = false;

  void _handleHover(bool isHovering) {
    setState(() {
      isHovered = isHovering;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _handleHover(true),
      onExit: (_) => _handleHover(false),
      child: Container(
        width: 327,
        padding: const EdgeInsets.all(15),
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
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FriendsPage()),
                  );
                },
                child: Row(
                  children: [
                    SizedBox(height: 16),
                    Text(
                      'Friends',
                      style: TextStyle(
                        color: isHovered ? Color.fromARGB(255, 169, 119, 184): Colors.black,
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: isHovered ? FontWeight.bold: FontWeight.w400,
                        height: 0.10,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              const Row(
                children: [
                  Text(
                    '10 Friends',
                    style: TextStyle(
                      color: Color(0xFF808080),
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      height: 0.11,
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 10.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 39,
                      child: Image.asset('lib/images/profile.png'),
                    ),
                    Container(
                      height: 39,
                      child: Image.asset('lib/images/profile.png'),
                    ),
                    Container(
                      height: 39,
                      child: Image.asset('lib/images/profile.png'),
                    ),
                    Container(
                      height: 39,
                      child: Image.asset('lib/images/profile.png'),
                    ),
                    Container(
                      height: 39,
                      child: Image.asset('lib/images/profile.png'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
