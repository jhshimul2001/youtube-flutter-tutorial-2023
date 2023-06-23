import 'package:flutter/material.dart';

class IndexedStacks extends StatefulWidget {
  const IndexedStacks({Key? key}) : super(key: key);

  @override
  State<IndexedStacks> createState() => _IndexedStacksState();
}

class _IndexedStacksState extends State<IndexedStacks> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IndexedStack(
          index: index,
          children: [
            Container(
              padding: EdgeInsets.all(100),
              child: Text(
                "0",
                style: TextStyle(fontSize: 80),
              ),
              color: Colors.red,
            ),
            Container(
              padding: EdgeInsets.all(100),
              child: Text(
                "1",
                style: TextStyle(fontSize: 80),
              ),
              color: Colors.pink,
            ),
            Container(
              padding: EdgeInsets.all(100),
              child: Text(
                "2",
                style: TextStyle(fontSize: 80),
              ),
              color: Colors.yellow,
            ),
            Container(
              padding: EdgeInsets.all(100),
              child: Text(
                "3",
                style: TextStyle(fontSize: 80),
              ),
              color: Colors.grey,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (index == 3) {
              index = 0;
            } else {
              index++;
            }
          });
        },
        child: Icon(Icons.change_circle),
      ),
    );
  }
}
