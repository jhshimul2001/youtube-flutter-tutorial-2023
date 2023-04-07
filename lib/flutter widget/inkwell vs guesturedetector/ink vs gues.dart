
import 'package:flutter/material.dart';
import 'package:youtube_flutter_project/flutter%20widget/bottomnavigationbar/pages/one.dart';

class Inkwell_vs_gesturedetector extends StatefulWidget {
  const Inkwell_vs_gesturedetector({Key? key}) : super(key: key);

  @override
  State<Inkwell_vs_gesturedetector> createState() => _Inkwell_vs_gesturedetectorState();
}

class _Inkwell_vs_gesturedetectorState extends State<Inkwell_vs_gesturedetector> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        //inkwell vs guesturedetector

        body: Center(
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> one()));
            },
            child: Container(
              height: 100,
              width: 100,
              color: Colors.yellowAccent,
            ),
          ),
        ),
    ));
  }
}
