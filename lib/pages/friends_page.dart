import 'package:flutter/material.dart';

class FriendsPage extends StatelessWidget {
  const FriendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
                image: AssetImage("lib/images/GroupCorner.png"), 
                fit: BoxFit.cover
          ),
         ),
        child: Center(
          child: ListView(
            children:[
              Container(
                width: 336,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 32,
                          child: Image.asset('lib/images/profile.png')
                          ),
                        Text('Friend1'),
                      ],
                    ),

                    Container(
                      width: 128,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color(0xFF7E80FF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text('Unfollow'),
                      
                    )
                  ],
                ),
        
              )
              
            ],
          ),
        ),
      )
    );
  }
}