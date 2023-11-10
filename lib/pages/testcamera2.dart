
// import 'package:camera/camera.dart';
// import 'package:flutter/material.dart';

// class testCamera extends StatefulWidget {
//   const testCamera({Key? key}) : super(key: key);

//   @override
//   State<testCamera> createState() => _testCameraState();
// }

// class _testCameraState extends State<testCamera> {
//   late CameraController cameraController;

//   @override
//   void initState() {
//     super.initState();
//     cameraController = CameraController(cameras[0], ResolutionPreset.max);
//     cameraController.initialize().then((_) {
//       if (!mounted) {
//         return;
//       }
//       setState(() {}); //to refresh widget

//     }).catchError((Object e) {
//       if (e is CameraException) {
//         switch (e.code){
//           case 'CameraAccessDenied':
//             print("acces was denied");
//             break;
//           default:
//             print(e.description);
//             break;
//         }
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             height: double.infinity, 
//             child: (
//               CameraPreview(cameraController)
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
