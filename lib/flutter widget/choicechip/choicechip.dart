import 'package:flutter/material.dart';

class Choicechip extends StatefulWidget {
  const Choicechip({Key? key}) : super(key: key);

  @override
  State<Choicechip> createState() => _ChoicechipState();
}

class _ChoicechipState extends State<Choicechip> {

  bool _isselected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
         child: ChoiceChip(
           selectedColor: Colors.cyan,
           selected: _isselected,
           label: Text("I love flutter"),
           avatar: Icon(Icons.favorite),
           onSelected: (value){
             setState(() {
               _isselected = value;
             });
           },
         ),
       ),
    );
  }
}
