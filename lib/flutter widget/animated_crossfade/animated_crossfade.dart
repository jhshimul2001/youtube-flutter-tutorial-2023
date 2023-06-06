import 'package:flutter/material.dart';

class Animated_crossfade extends StatefulWidget {
  const Animated_crossfade({Key? key}) : super(key: key);

  @override
  State<Animated_crossfade> createState() => _Animated_crossfadeState();
}

class _Animated_crossfadeState extends State<Animated_crossfade> {


  var first = true;

  void relaod(){
    setState(() {
      if(first){
        first = false;
      }else{
        first = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedCrossFade(
                firstChild: Center(
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.green,
                    child: Text("hello flutter",textAlign: TextAlign.center,),
                  ),
                ),
                secondChild: Image.asset("assets/image/apple.png",height: 200,width: 200,),
                crossFadeState: first
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: Duration(seconds: 2)),

            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
                      relaod();
            }, child: Text("show"))
          ],
        ),
      ),
    );
  }
}
