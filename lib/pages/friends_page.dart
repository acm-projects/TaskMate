import 'package:flutter/material.dart';

class FriendsPage extends StatelessWidget {
  const FriendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
                image: AssetImage("lib/images/whitebg+gradient.png"), 
                fit: BoxFit.cover
          ),
         ),
         child: SafeArea(
          child: Center(
            child: Stack(
              children: [
                ListView(
                  padding: EdgeInsets.only(right: 25, left: 25),
                  children: [
                    Row(
                      children: [
                      IconButton(
                          padding: EdgeInsets.all(0),
                          icon: const CircleAvatar(
                            backgroundImage:
                                AssetImage('lib/images/profile.png'),
                            backgroundColor: Colors.grey,
                          ),
                          iconSize: 45,
                          onPressed: () {
                            //add functionality
                          }),
                    ]),
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
                    
                  ],
                )
              ],
            ),
          )
          ),
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
      )
    );
  }
}