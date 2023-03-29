
import 'package:flutter/material.dart';
import 'package:youtube_flutter_project/flutter%20widget/bottomnavigationbar/pages/one.dart';
import 'package:youtube_flutter_project/flutter%20widget/bottomnavigationbar/pages/three.dart';
import 'package:youtube_flutter_project/flutter%20widget/bottomnavigationbar/pages/two.dart';

class Bottomnavigationbars extends StatefulWidget {
  const Bottomnavigationbars({Key? key}) : super(key: key);

  @override
  State<Bottomnavigationbars> createState() => _BottomnavigationbarsState();
}

class _BottomnavigationbarsState extends State<Bottomnavigationbars> {

  mySnack(message,context){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

  var _currentindex = 0;

  final pages = [
    one(),
    two(),
    three()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
            bottomNavigationBar: BottomNavigationBar(
             backgroundColor: Colors.grey.shade500,
              selectedLabelStyle: TextStyle(fontSize: 15),
              selectedItemColor: Colors.green,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
                BottomNavigationBarItem(icon: Icon(Icons.message),label: "message"),
                BottomNavigationBarItem(icon: Icon(Icons.code),label: "code"),
              ],
              onTap: (index){
                setState(() {
                  _currentindex = index;
                });
              },
            ),
      body: pages[_currentindex],

    ));
  }
}
