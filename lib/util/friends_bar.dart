import 'package:flutter/material.dart';
import 'package:task_mate/pages/friends_page.dart';

class FriendsBar extends StatelessWidget {
  const FriendsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      // padding: const EdgeInsets.all(15),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      // clipBehavior: Clip.antiAlias,
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
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.zero, // Set padding to zero
                margin: EdgeInsets.zero, // Set margin to zero
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FriendsPage()),
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 207, 208, 255),
                    padding: EdgeInsets.all(5),
                    minimumSize: Size(20, 20),
                  ),
                  child: const Text(
                    'Friends',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
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
                CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('lib/images/profile_pic_2.jpeg'),
                  ),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('lib/images/ridwan_profile.jpg'),
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('lib/images/profile_pic_3.jpeg'),
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('lib/images/profile_pic_2.jpeg'),
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('lib/images/profile_pic_2.jpeg'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
