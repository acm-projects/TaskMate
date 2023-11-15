// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:task_mate/pages/profile_page.dart';
import 'package:task_mate/util/friends_card.dart';
import 'package:task_mate/util/friends_tile.dart';

class FriendsPage extends StatelessWidget {
  const FriendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DecoratedBox(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("lib/images/whitebg+gradient.png"),
            fit: BoxFit.cover),
      ),
      child: SafeArea(
        child: Center(
        child: Stack(
          children: [
            SizedBox(height: 50),
            ListView(
              padding: EdgeInsets.only(right: 25, left: 25),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        icon: const Icon(Icons.arrow_back_ios_new,
                            size: 25), // Use the Icon widget
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                  ],
                ),
                const SizedBox(height: 5),
                const Row(
                  children: [
                    Text(
                      'Friends',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Jockey One',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ],
                ),
                //border
                Container(
                  height: 1.5,
                  color: Color(0xFFBFBFFF),
                ),

                const Padding(
                  padding: EdgeInsets.only(top: 8, bottom: 8),
                  child: Text(
                    'Make a New Friend Today!',
                    style: TextStyle(
                      color: Color(0xFF808080),
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
                //friends container

                Container(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      // ignore: prefer_const_constructors
                      CardFriend(
                        username: 'Shrimoy',
                        profilePic: "lib/images/profile_pic_8.jpeg",
                      ),
                      const CardFriend(
                        username: 'Jasper',
                        profilePic: "lib/images/profile_pic_9.jpeg",
                      ),
                      const CardFriend(
                        username: 'Friend3',
                        profilePic: "lib/images/profile.png",
                      ),
                      const CardFriend(
                        username: 'Friend4',
                        profilePic: "lib/images/profile.png",
                      ),
                      const CardFriend(
                        username: 'Friend5',
                        profilePic: "lib/images/profile.png",
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 10),
                //Friends subtitle
                const Text(
                  'Your Friends',
                  style: TextStyle(
                    color: Color(0xFF808080),
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                const SizedBox(height: 1),
                //list of friends to add
                FriendsTile(
                  username: 'Ridwan', 
                  profilePic: 'lib/images/ridwan_profile.jpg',
                  ),
                FriendsTile(
                  username: 'Ubaid', 
                  profilePic: 'lib/images/profile_pic_6.jpeg',
                ),
                FriendsTile(
                  username: 'Devansh',
                  profilePic: 'lib/images/profile_pic_7.jpeg',
                ),
                FriendsTile(username: 'Zunaira',
                  profilePic: 'lib/images/profile_pic_4.jpeg',
                ),
                FriendsTile(username: 'Zainab',
                  profilePic: 'lib/images/profile_pic_10.jpeg',
                ),
                FriendsTile(username: "Farhan",
                  profilePic: 'lib/images/ridwan_profile.jpg',
                ),
                FriendsTile(username: 'Afeefa',
                  profilePic: 'lib/images/profile_pic_5.jpeg',
                ),
                FriendsTile(username: 'Safia',
                  profilePic: 'lib/images/ridwan_profile.jpg',
                ),
                FriendsTile(username: 'Ethan',
                  profilePic: 'lib/images/ridwan_profile.jpg',
                ),
                FriendsTile(username: 'Safia',
                  profilePic: 'lib/images/ridwan_profile.jpg',
                ),
                FriendsTile(username: 'Evelyn',
                  profilePic: 'lib/images/ridwan_profile.jpg',
                ),
                FriendsTile(username: "Muriam",
                  profilePic: 'lib/images/ridwan_profile.jpg',
                ),
              ],
            )
          ],
        ),
      )),
      // child: Center(
      //   child: ListView(
      //     children:[
      //       Container(
      //         width: 336,
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [
      //             Row(
      //               children: [
      //                 Container(
      //                   height: 32,
      //                   child: Image.asset('lib/images/profile.png')
      //                   ),
      //                 Text('Friend1'),
      //               ],
      //             ),

      //             Container(
      //               width: 128,
      //               padding: EdgeInsets.all(5),
      //               decoration: BoxDecoration(
      //                 color: Color(0xFF7E80FF),
      //                 borderRadius: BorderRadius.circular(10),
      //               ),
      //               child: const Text('Unfollow'),

      //             )
      //           ],
      //         ),

      //       )

      //     ],
      //   ),
      // ),
    ));
  }
}
