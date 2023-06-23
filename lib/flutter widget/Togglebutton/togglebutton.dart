import 'package:flutter/material.dart';

class Togglebutton extends StatefulWidget {
  const Togglebutton({Key? key}) : super(key: key);

  @override
  State<Togglebutton> createState() => _TogglebuttonState();
}

class _TogglebuttonState extends State<Togglebutton> {

  List<bool> _isselected = [false,true,false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             ToggleButtons(
              onPressed: (int index){
                setState(() {
                  _isselected[index] = !_isselected[index];
                });
              },
                 children: [
                   Icon(Icons.wifi),
                   Icon(Icons.account_circle),
                   Icon(Icons.lte_plus_mobiledata)
                 ],
                 isSelected: _isselected

             )
           ],
         ),
       ),
    );
  }
}
