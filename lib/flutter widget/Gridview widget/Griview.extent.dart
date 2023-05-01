
import 'package:flutter/material.dart';

class Gridview_extent extends StatefulWidget {
  const Gridview_extent({Key? key}) : super(key: key);

  @override
  State<Gridview_extent> createState() => _Gridview_extentState();
}

class _Gridview_extentState extends State<Gridview_extent> {
  @override
  Widget build(BuildContext context) {
    var arrcolors = [
      Colors.teal,
      Colors.red,
      Colors.blueGrey,
      Colors.blue,
      Colors.yellow,
      Colors.green,
      Colors.cyan,
      Colors.amber,
      Colors.indigo,
    ];
    return SafeArea(child: Scaffold(
      body: GridView.extent(
        maxCrossAxisExtent: 150,
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          Container(color: arrcolors[0],),
          Container(color: arrcolors[1],),
          Container(color: arrcolors[2],),
          Container(color: arrcolors[3],),
          Container(color: arrcolors[4],),
          Container(color: arrcolors[5],),
          Container(color: arrcolors[6],),
          Container(color: arrcolors[7],)
        ],
      ),
    ));
  }
}