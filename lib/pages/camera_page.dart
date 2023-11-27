import 'dart:math';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:task_mate/pages/post_task.dart';

class testCamera extends StatefulWidget {
  const testCamera({Key? key}) : super(key: key);

  @override
  State<testCamera> createState() => _testCameraState();
}

class _testCameraState extends State<testCamera> {
  late List<CameraDescription> cameras;
  late CameraController cameraController;

  int direction = 0;

  @override
  void initState() {
    startCamera(0);
    super.initState();
  }

  void startCamera(int direction) async {
    cameras = await availableCameras();

    cameraController = CameraController(
      cameras[direction],
      ResolutionPreset.high,
      enableAudio: false,
    );

    await cameraController.initialize().then((value) {
      if (!mounted) {
        return;
      }
      setState(() {}); //to refresh widget
    }).catchError((e) {
      print(e);
    });
  }

  @override
  void dispose() {
    cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (cameraController.value.isInitialized) {
      return Scaffold(
        body: Stack(
          children: [
            Container(
                height: double.infinity,
                width: double.infinity,
                child: CameraPreview(cameraController)),
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: button(Icons.arrow_back, Alignment.topLeft, 20, 55)),
            GestureDetector(
                onTap: () {
                  setState(() {
                    direction = direction == 0 ? 1 : 0;
                    startCamera(direction);
                  });
                },
                child: button(Icons.flip_camera_ios_rounded,
                    Alignment.bottomLeft, 20, 0)),
            GestureDetector(
                onTap: () {
                  cameraController.takePicture().then((XFile? file) {
                    if (mounted) {
                      if (file != null) {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => PostTaskPage(
                              imagePath: file.path,
                            ),
                          ),
                        );
                      }
                    }
                  });
                },
                child:
                    button(Icons.photo_camera, Alignment.bottomCenter, 0, 0)),
          ],
        ),
      );
    } else {
      return Container();
    }
  }

  Widget button(IconData icon, Alignment alignment, double left, double top) {
    return Align(
      alignment: alignment,
      child: Container(
        margin: EdgeInsets.only(
          top: top,
          left: left,
          bottom: 50,
        ),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: Center(
            child: Icon(
          icon,
          color: Colors.black,
        )),
      ),
    );
  }
}
