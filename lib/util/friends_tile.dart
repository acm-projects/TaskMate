import 'package:flutter/material.dart';

class FriendsTile extends StatelessWidget {
  final String username;
  final String profilePic;
  
  const FriendsTile({
    Key? key, 
    required this.username,
    required this.profilePic,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center, // Align vertically centered
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(profilePic),
                  ),
                  // Container(
                    
                  //   height: 32,
                  //   child: Image.asset(profilePic),
                  // ),
                  const SizedBox(width: 10),
                  Text(
                    username,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      height: 0.10,
                    ),
                  ),
                ],
              ),
              Container(
                width: 128,
                padding: EdgeInsets.all(7.5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF7E80FF),
                ),
                child: const Center(
                  child: Text(
                    'Unfollow',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              
            ],
          ),
          SizedBox(height: 12),
          Container(
            height: 1.5,
            color: Color(0xFFBFBFFF),
          ),
        ],
      ),
      
    );
  }
}
