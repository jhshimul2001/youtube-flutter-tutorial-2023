
import 'package:flutter/material.dart';
import 'package:youtube_flutter_project/flutter_10_ui/4th%20ui%20Diary%20App%20UI%20Design/notescreen.dart';
import 'itemnote.dart';

class DiaryAppUi extends StatelessWidget {
  const DiaryAppUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('My Diary', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 1,
      ),
      body: ListView(
        padding:  EdgeInsets.symmetric(horizontal: 15),
        children:  [
          ItemNote(color: Colors.green),
          ItemNote(color: Colors.red),
          ItemNote(color: Colors.blue),
          ItemNote(color: Colors.teal),
          ItemNote(color: Colors.orange),
          ItemNote(color: Colors.deepOrange),
          ItemNote(color: Colors.indigo),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) =>  NoteScreen()));
        },
        child:  Icon(Icons.add),
      ),
    );
  }
}