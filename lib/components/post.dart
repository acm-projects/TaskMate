import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final String pfp;
  final String userName;
  final String timeSincePost;
  final String smallPicture;
  final String bigPicture;
  final int progress;
  final String caption;

  const Post({
    super.key,
    required this.pfp,
    required this.userName,
    required this.timeSincePost,
    required this.smallPicture,
    required this.bigPicture,
    required this.progress,
    required this.caption,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 527,
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
                height: 55,
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          caption,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          'View comments',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 12,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
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
            Positioned(
              left: 304,
              top: 387,
              child: Transform(
                transform: Matrix4.identity()
                  ..translate(0.0, 0.0)
                  ..rotateZ(-1.57),
                child: Container(
                  width: 166,
                  height: 23,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Color(0xFFEFF2F2),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignOutside,
                        color: Color(0xFFF0F3F3),
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: (progress/100)*166, //stretch goal add functionality to accept progress
                        height: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 0.5),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Color(0xFF7E80FF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(30),
                                topRight: Radius.circular(30)),
                          ),
                        ),

                        
                          child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Transform(
                              transform: Matrix4.identity()
                                ..translate(0.0, 0.0)
                                ..rotateZ(1.57),
                              child: Text(
                              progress.toString() + '%',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 9,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
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

            Positioned(
              left: 292,
              top: 390,
              child: IconButton(
                iconSize: 25,
                icon: Image(image: AssetImage('lib/images/bell.png',)),
                onPressed: () {
                  //send notification for nudge
                },
                ),
            ),

            Positioned(
              left: 293,
              top: 420,
              child: IconButton(
                iconSize: 25,
                icon: Image.asset('lib/images/celebrate.png', width: 25,),
                onPressed: () {
                  //send notification for congrats
                },
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            timeSincePost,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                              fontSize: 10,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),),

                  Container(child: Text(
                    '•••',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                    ),
                  ),)
                ],
              ),
            ),
          ],
        ));
  }
}
