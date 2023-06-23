import 'package:flutter/material.dart';

class Placeholders extends StatefulWidget {
  const Placeholders({Key? key}) : super(key: key);

  @override
  State<Placeholders> createState() => _PlaceholdersState();
}

class _PlaceholdersState extends State<Placeholders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Placeholder(
            color: Colors.red,
            strokeWidth: 4,
            fallbackWidth: 100,
            fallbackHeight: 100,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            constraints: BoxConstraints.expand(
              height: 100,
              width: 100,
            ),
            child: Placeholder(
              color: Colors.blueAccent,
              strokeWidth: 4,
              fallbackWidth: 100,
              fallbackHeight: 100,
            ),
          ),
        ],
      ),
    );
  }
}
