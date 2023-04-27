
import 'package:flutter/material.dart';

class Tiktokui extends StatefulWidget {
  const Tiktokui({Key? key}) : super(key: key);

  @override
  State<Tiktokui> createState() => _TiktokuiState();
}

class _TiktokuiState extends State<Tiktokui> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
       body: Container(
         decoration: BoxDecoration(
           image: DecorationImage(
             fit: BoxFit.cover,
             image: AssetImage("assets/image/115858.jpg",)
           )
         ),
       ),
    ));
  }
}
