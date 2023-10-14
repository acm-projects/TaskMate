import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:task_mate/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import '../widget_tree.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TaskMate',
      theme: ThemeData(
        primarySwatch: Colors.blue,
     
      ),
      home: const WidgetTree(),
    );
  }
}


