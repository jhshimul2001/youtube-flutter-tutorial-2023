import 'package:flutter/material.dart';

class LimitedBoxes extends StatefulWidget {
  const LimitedBoxes({Key? key}) : super(key: key);

  @override
  State<LimitedBoxes> createState() => _LimitedBoxesState();
}

class _LimitedBoxesState extends State<LimitedBoxes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            LimitedBox(
              maxWidth: 350,
              maxHeight: 300,
              child: Container(
                height: 500,
                color: Colors.red,
              ),
            ),

            LimitedBox(
              maxWidth: 350,
              maxHeight: 300,
              child: Container(
                height: 500,
                color: Colors.green,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
