import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:task_mate/pages/collaborate.dart';
import 'package:task_mate/pages/create_collab.dart';
import 'package:task_mate/pages/memories_page.dart';
import 'package:task_mate/pages/tasks.dart';
import 'package:task_mate/pages/friends_page.dart';
import 'package:task_mate/pages/camera_page.dart';
import 'pages/intro_page.dart';
import 'package:task_mate/pages/intro_page.dart';
import 'package:task_mate/pages/profile_page.dart';
import 'pages/signin_page.dart';
import 'pages/signup_page1.dart';
import 'pages/signup_page2.dart';
import 'pages/signup_page3.dart';
import 'pages/signup_page4.dart';
import 'pages/home.dart';
import 'pages/create_task.dart';
import 'pages/collaborate.dart';
import 'pages/create_collab.dart';
import 'components/navbar.dart';
import 'pages/collaboration.dart';
import 'pages/collab_contributors.dart';
import 'pages/collab_attachments.dart';
import 'pages/homepageubaid.dart';
import 'pages/post_task.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:task_mate/firebase/firebase_options.dart';
import 'package:task_mate/firebase/storage_service.dart';

//late List<CameraDescription> cameras;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // cameras = await availableCameras();
  // final firstCamera = cameras.first;
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      routes: {
        '/intro_page.dart': (context) => IntroPage(),
        '/signin_page.dart': (context) => SignInPage(),
        '/signup_page1.dart': (context) => SignUpPage1(),
        //'/signup_page2.dart': (context) => SignUpPage2(),
        //'/signup_page3.dart': (context) => SignUpPage3(),
        '/home.dart': (context) => Home(),
        '/tasks.dart': (context) => TasksPage(),
        '/create_task.dart': (context) => CreateTaskPage(),
        '/collaborate.dart': (context) => CollaboratePage(),
        '/create_collab.dart': (context) => CreateCollabPage(),
        '/homepageubaid.dart': (context) => HomePage(),
      },
    );
  }
}
