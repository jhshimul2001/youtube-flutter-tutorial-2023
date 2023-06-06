import 'package:flutter/material.dart';

class Animated_opacity extends StatefulWidget {
  const Animated_opacity({Key? key}) : super(key: key);

  @override
  State<Animated_opacity> createState() => _Animated_opacityState();
}

class _Animated_opacityState extends State<Animated_opacity> {
  var myopacity = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: myopacity,
              duration: Duration(seconds: 2),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              setState(() {
                 myopacity = 0.5;
              });
            }, child: Text("close"))
          ],
        ),
      ),
    );
  }
}
