import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Auto_Size_Texts extends StatefulWidget {
  const Auto_Size_Texts({Key? key}) : super(key: key);

  @override
  State<Auto_Size_Texts> createState() => _Auto_Size_TextsState();
}

class _Auto_Size_TextsState extends State<Auto_Size_Texts> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Container(
          height: 500,
          width: 300,
          color: Colors.green,
          child: AutoSizeText(
            "Flutter widget that automatically resizes text to fit perfectly within its bounds.Show some and star the repo to support the project",style: TextStyle(fontSize: 200),
          ),
        ),
      ),
    ));
  }
}
