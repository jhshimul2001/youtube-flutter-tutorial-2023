import 'package:flutter/material.dart';

class Sliverlists extends StatefulWidget {
  @override
  _SliverlistsState createState() => _SliverlistsState();
}

class _SliverlistsState extends State<Sliverlists> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
          slivers: [
           SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Card(
                margin: EdgeInsets.all(15),
                child: Container(
                  color: Colors.orange.shade200,
                  height: 60,
                  alignment: Alignment.center,
                  child: Text(
                    "List Item $index",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              );
            },
            childCount: 10,
          ),
        ),
      ]),
    );
  }
}
