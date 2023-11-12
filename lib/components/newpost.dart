import 'package:flutter/material.dart';
import 'package:task_mate/components/textfield1.dart';

class NewPost extends StatelessWidget {
  final controller;
  final String pfp;
  final String userName;
  final String smallPicture;
  final String bigPicture;
  final int progress;
  final String caption;

  const NewPost({
    super.key,
    required this.controller,
    required this.pfp,
    required this.userName,
    required this.smallPicture,
    required this.bigPicture,
    required this.progress,
    required this.caption,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 515,
        width: 342,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 4,
              offset: Offset.fromDirection(BorderSide.strokeAlignOutside),
              spreadRadius: 0,
            )
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              top: 46,
              child: Container(
                width: 342,
                height: 428,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                ),
                clipBehavior: Clip.antiAlias,
                child: Image.asset(
                  bigPicture,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 473,
              child: Container(
                width: 342,
                height: 41,
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                ),
                
                child: TextField(
                  controller: controller,
                  decoration:  const InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'Caption',
                    hintStyle: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 12
                    )
                  ),
              ),
              
            ),
            ),
            Positioned(
              left: 295,
              top: 403,
              child: Container(
                width: 23,
                height: 31,
              ),
            ),

            //small picture
            Positioned(
              left: 14,
              top: 57,
              child: Container(
                width: 117.49,
                height: 155.77,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black, width: 2)),
                clipBehavior: Clip.antiAlias,
                child: Image.asset(
                  smallPicture,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Container(
              width: 342,
              height: 46,
              padding: const EdgeInsets.all(8),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {},
                    padding: EdgeInsets.zero,
                    icon:
                      Image.asset(pfp, height: 30)),
                  Expanded(
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            userName,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'RobotoBold',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),),
                ],
              ),
            ),
          ],
        ));
  }
}
