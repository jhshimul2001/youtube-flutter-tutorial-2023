import 'package:flutter/material.dart';

class Clipovals extends StatefulWidget {
  const Clipovals({Key? key}) : super(key: key);

  @override
  State<Clipovals> createState() => _ClipovalsState();
}

class _ClipovalsState extends State<Clipovals> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
       body: Center(
         child: ClipOval(
           child: Container(
             child: Image.asset("assets/image/Flutter-Tutorial.png"),
           ),
       clipper: Myclipper(),
         ),
       ),
    ));
  }
}

class Myclipper extends CustomClipper<Rect> {
  Rect getClip (Size size){

   // return Rect.fromLTWH(50, 50, 150, 150);
   // return Rect.fromPoints(Offset(50,100), Offset(100,50));
   // return Rect.fromCircle(center: Offset(200,200), radius: 100);
    return Rect.fromCenter(center: Offset(100,80), width: 200, height: 300);
  }
  bool shouldReclip(oldClipper){
    return false;
  }
}