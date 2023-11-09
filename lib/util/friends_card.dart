import 'package:flutter/material.dart';

class CardFriend extends StatelessWidget {
  final String username;
  final String profilePic;

  const CardFriend({
    Key? key,
    required this.username,
    required this.profilePic,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        width: 160,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 232, 232, 255),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            const SizedBox(height: 10),
            Container(
              width: 50,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child:Image.asset(profilePic)
              )
            ),
            const SizedBox(height: 10),
            Text('' + username.toString()),
            const SizedBox(height: 10),
            Container(
              width: 128,
              padding: const EdgeInsets.symmetric(vertical: 13),
              decoration: BoxDecoration(
                color: Color(0xFF7E80FF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  'Follow',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 15,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
