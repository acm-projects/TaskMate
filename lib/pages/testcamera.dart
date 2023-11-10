
// import 'package:camera/camera.dart';
// import 'package:flutter/material.dart';

// class testCamera extends StatefulWidget {
//   const testCamera({Key? key}) : super(key: key);

//   @override
//   State<testCamera> createState() => _testCameraState();
// }

// class _testCameraState extends State<testCamera> {
//   late List<CameraDescription> cameras;
//   late CameraController cameraController;

//   @override
//   void initState() {
//     startCamera();
//     super.initState();
//   }

//   void startCamera() async {
//     cameras = await availableCameras();

//     cameraController = CameraController(
//       cameras[0],
//       ResolutionPreset.high,
//       enableAudio: false,
//     );

//     await cameraController.initialize().then((value) {
//       if (!mounted) {
//         return;
//       }
//       setState(() {}); //to refresh widget
//     }).catchError((e) {
//       print(e);
//     });
//   }

//   @override
//   void dispose() {
//     cameraController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     try {
//       return Scaffold(
//         body: Stack(
//           children: [
//             CameraPreview(cameraController),
//           ],
//         ),
//       );
//     } catch (e) {
//       return const SizedBox();
//     }
//   }
// }
