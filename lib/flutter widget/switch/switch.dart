import 'package:flutter/material.dart';

class Swichs extends StatefulWidget {
  const Swichs({Key? key}) : super(key: key);

  @override
  State<Swichs> createState() => _SwichsState();
}

class _SwichsState extends State<Swichs> {
  var _value = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: _value == false ? Colors.grey : Colors.black.withOpacity(0.2),
       body: Center(
         child: Switch(
           activeColor: Colors.green,
           inactiveTrackColor: Colors.redAccent,
           activeTrackColor: Colors.grey,
           value: _value,
           onChanged: (value){
             setState(() {
               _value = value!;
             });
           },
         ),
       ),
    ));
  }
}
