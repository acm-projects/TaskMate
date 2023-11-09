// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";

class AttachmentTile extends StatelessWidget {
  final String attachmentName;
  final String attachmentIcon;
  final String link;

  const AttachmentTile({
    super.key,
    required this.attachmentName,
    required this.attachmentIcon,
    required this.link,
  });

  void _openLink (link) {

  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 50,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    _openLink(link);
                  },
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage(attachmentIcon),
                        width: 23,
                      ),
                    
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.blue,
                          width: 0.8, // Adjust the width to control the gap size
                        ),
                      ),
                    ),
                    child: Text(
                    attachmentName,
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 14,
                      fontFamily: 'RobotoBold',
                    ),
                  ),
                  ),
                  ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
