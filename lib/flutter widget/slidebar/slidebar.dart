import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class Slidebars extends StatefulWidget {
  const Slidebars({Key? key}) : super(key: key);

  @override
  State<Slidebars> createState() => _SlidebarsState();
}

class _SlidebarsState extends State<Slidebars> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SlideAction(
          innerColor: Colors.blue,
          outerColor: Colors.blue.shade100,
          borderRadius: 20,
          sliderButtonIcon: Icon(
            Icons.lock,
            color: Colors.white,
          ),
          text: 'slide to unlock',
          textStyle: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          onSubmit: () {},
        ),
      ),
    );
  }
}
