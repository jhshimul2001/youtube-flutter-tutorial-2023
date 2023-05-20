import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

class Animated_Bottom_navy_var extends StatefulWidget {
  @override
  _Animated_Bottom_navy_varState createState() =>
      _Animated_Bottom_navy_varState();
}

class _Animated_Bottom_navy_varState extends State<Animated_Bottom_navy_var> {
  var _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Animated nav bar"),
          centerTitle: true,
        ),
        bottomNavigationBar: BottomNavyBar(
            selectedIndex: _currentindex,
        backgroundColor: Colors.blueGrey.shade200,
        itemCornerRadius: 24,
        animationDuration: Duration(seconds: 1),
        curve: Curves.easeInOut,
        iconSize: 25,
        showElevation: true,
        items: [
          BottomNavyBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
            activeColor: Colors.red,
            inactiveColor: Colors.blue,
          ),
          BottomNavyBarItem(
              icon: Icon(Icons.code),
              title: Text("code")
          ),
          BottomNavyBarItem(
              icon: Icon(Icons.contact_page),
              title: Text("contact page")
          ),
          BottomNavyBarItem(
              icon: Icon(Icons.add),
              title: Text("add"),
          ),

        ], onItemSelected: (index) {
          setState(() {
            _currentindex = index;
          });
        }
    ))
    );
  }
}
