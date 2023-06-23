import 'package:flutter/material.dart';

class Circular_rotate_dragable extends StatefulWidget {
  const Circular_rotate_dragable({Key? key}) : super(key: key);

  @override
  State<Circular_rotate_dragable> createState() => _Circular_rotate_dragableState();
}

class _Circular_rotate_dragableState extends State<Circular_rotate_dragable>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              backgroundColor: Colors.deepPurple,
              strokeWidth: 8,
              color: Colors.green,
            ),

            SizedBox(
              height: 30,
            ),

            RotatedBox(
              quarterTurns: 1,
              child: Text(
                "flutter",
                style: TextStyle(fontSize: 50),
              ),
            ),

            SizedBox(
              height: 30,
            ),
            Draggable(
                child: Container(
                  color: Colors.red,
                  height: 200,
                  width: 200,
                ),
                feedback: Container(
                  height: 200,
                  width: 200,
                  color: Colors.yellow.withOpacity(0.5),
                )),


          ],
        ),
      ),
    );
  }
}
