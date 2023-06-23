import 'package:flutter/material.dart';

class Scrollbars extends StatefulWidget {
  const Scrollbars({Key? key}) : super(key: key);

  @override
  State<Scrollbars> createState() => _ScrollbarsState();
}

class _ScrollbarsState extends State<Scrollbars> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
          thumbVisibility: true,
          thickness: 15,
          scrollbarOrientation: ScrollbarOrientation.right,
          child:  ListView.builder(
            itemCount: 20,
            itemBuilder: (BuildContext context, int index){
              return ListTile(
                title : Text('Item $index'),
              );
            },
          )),
    );
  }
}
