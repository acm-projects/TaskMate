import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:task_mate/auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:task_mate/storage_service.dart';
import '../main.dart';

class HomePage extends StatelessWidget{
  HomePage({Key? key}) : super(key: key);

  final User? user = Auth().currentUser;
  final DatabaseReference ref = FirebaseDatabase.instance.ref("users/${Auth().currentUser?.uid}");
  final taskNameController = TextEditingController();
  final taskDescController = TextEditingController();
  final taskDateController = TextEditingController();
  final friendNameController = TextEditingController();

  Future<void> signOut() async {
    await Auth().signOut();
  }

  Future<void> createTask() async {
    if (taskNameController.text != "") { // TODO add checking to make sure task name is distinct
      DatabaseReference tasksRef = ref.child("tasks/${taskNameController.text}");
      try {
        await tasksRef.set({
          "taskDescription" : taskDescController.text,
          "dueDate" : taskDateController.text // TODO add processing to convert this into actual date
        });
      }
      catch (e) {
        print("Error while updating task information: $e");
      }
      taskNameController.clear();
      taskDescController.clear();
      taskDateController.clear();
    }
  }

  Future<void> addFriend() async {
    if (friendNameController.text != "") {
      try {
        final snapshot = await ref.child("friends").get();
        if (snapshot.exists) {
          List<dynamic> friends = snapshot.value as List<dynamic>;
          friends.add(friendNameController.text);
          await ref.update({"friends" : friends});
        }
        else {
          await ref.update({"friends" : [friendNameController.text]});
        }
      }
      catch (e) {
        print("Error while updating friend information: $e");
      }
    }
    friendNameController.clear();
  }

  void dispose() {
    taskNameController.dispose();
  }

  Widget _title(){
    return const Text('TaskMate');
  }
  Widget _userUid(){
    return Text(user?.email ?? 'User email');
  }
  Widget _taskNameField(){
    return TextField(
      controller: taskNameController,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Enter a task name',
      )
    );
  }
  Widget _taskDescField(){
    return TextField(
      controller: taskDescController,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Enter a short description of your task (optional)',
      )
    );
  }
  Widget _taskDateField(){
    return TextField(
      controller: taskDateController,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Enter the due date of your task (optional)',
      )
    );
  }
  Widget _createTaskButton(){
    return ElevatedButton(
    onPressed: createTask,
    child: const Text('Create a new task'),
    );
  }
  Widget _friendNameField(){
    return TextField(
      controller: friendNameController,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Enter the name of the friend to add',
      )
    );
  }
  Widget _addFriendButton(){
    return ElevatedButton(
    onPressed: addFriend ,
    child: const Text('Add Friend'),
    );
  }
final Storage storage = Storage();
Widget _fileButton(BuildContext context) {
  return ElevatedButton(
    onPressed: () async {
      final results = await FilePicker.platform.pickFiles(
        allowMultiple: false,
        type: FileType.custom,
        allowedExtensions: ['png', 'jpg'],
      );

      if (results == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('No file selected.'),
          ),
        );
        return;
      }
      
      final path = results.files.single.path!;
      final fileName = results.files.single.name;

      print(path);
      print(fileName);
      
      storage.uploadFile(path, fileName); 
    },
    child: const Text('Upload Image'),
  );
}




  Widget _signOutButton(){
    return ElevatedButton(
    onPressed: signOut ,
    child: const Text('Sign out'),
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: _title(),
    ),
    body: Container(
      height: double.infinity,
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _userUid(),
          _taskNameField(),
          _taskDescField(),
          _taskDateField(),
          _createTaskButton(),
          _friendNameField(),
          _addFriendButton(),
          _fileButton(context),
          _signOutButton(),
        ],
      ),
    ),
    );
  }
}
