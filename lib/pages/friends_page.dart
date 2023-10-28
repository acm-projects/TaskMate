import 'package:flutter/material.dart';

class FriendsPage extends StatelessWidget {
  const FriendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
                image: AssetImage("lib/images/GroupCorner.png"), 
                fit: BoxFit.cover
          ),
         ),
         child: Text('Friends Page'),
      )
    );
  }
}