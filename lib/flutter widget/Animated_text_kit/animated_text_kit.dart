import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Animated_text_kit extends StatefulWidget {
  const Animated_text_kit({Key? key}) : super(key: key);

  @override
  State<Animated_text_kit> createState() => _Animated_text_kitState();
}

class _Animated_text_kitState extends State<Animated_text_kit> {
  static const colorizeColors = [
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
  ];

  static const colorizeTextStyle = TextStyle(
    fontSize: 50.0,
    fontFamily: 'Horizon',
  );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(

      // body: Center(
      //   child: AnimatedTextKit(animatedTexts: [
      //     TypewriterAnimatedText("hello world",
      //         textStyle: TextStyle(fontSize: 20),
      //         speed: Duration(milliseconds: 500)),
      //   ],
      //     totalRepeatCount: 3,
      //     displayFullTextOnTap: true,
      //   ),
      // ),
      //
      // body: Center(
      //   child: Row(
      //     mainAxisSize: MainAxisSize.min,
      //       children: [
      //       Text("Flutter",style: TextStyle(fontSize: 50),),
      //        SizedBox(width: 5,),
      //       AnimatedTextKit(
      //           animatedTexts: [
      //         RotateAnimatedText('with'),
      //         RotateAnimatedText("shimul")
      //       ])
      //     ],
      //   ),
      // ),

      // body: Center(
      //   child: Row(
      //     mainAxisSize: MainAxisSize.min,
      //     children: [
      //       DefaultTextStyle(
      //         style: TextStyle(fontSize: 50, color: Colors.red),
      //         child: AnimatedTextKit(animatedTexts: [
      //           FadeAnimatedText("flutter"),
      //           FadeAnimatedText("With"),
      //           FadeAnimatedText("Shimul"),
      //           FadeAnimatedText("Subscribe"),
      //           FadeAnimatedText("like and share"),
      //         ]),
      //       )
      //     ],
      //   ),
      // ),

      // body: Center(
      //   child: Row(
      //     mainAxisSize: MainAxisSize.min,
      //     children: [
      //       DefaultTextStyle(
      //         style: TextStyle(fontSize: 50, color: Colors.red),
      //         child: AnimatedTextKit(
      //             animatedTexts: [
      //           TyperAnimatedText("flutter"),
      //           TyperAnimatedText("With"),
      //           TyperAnimatedText("Shimul"),
      //           TyperAnimatedText("Subscribe"),
      //           TyperAnimatedText("like and share"),
      //         ]),
      //       )
      //     ],
      //   ),
      // ),

      // body: Center(
      //   child: Row(
      //     mainAxisSize: MainAxisSize.min,
      //     children: [
      //       DefaultTextStyle(
      //         style: TextStyle(fontSize: 50, color: Colors.red),
      //         child: AnimatedTextKit(
      //             animatedTexts: [
      //               ScaleAnimatedText("flutter"),
      //               ScaleAnimatedText("With"),
      //               ScaleAnimatedText("Shimul"),
      //               ScaleAnimatedText("Subscribe"),
      //               ScaleAnimatedText("like and share"),
      //             ]),
      //       )
      //     ],
      //   ),
      // ),

      // body: Center(
      //   child: Row(
      //     mainAxisSize: MainAxisSize.min,
      //     children: [
      //       AnimatedTextKit(
      //           animatedTexts: [
      //             ColorizeAnimatedText(
      //               'Larry Page',
      //               textStyle: colorizeTextStyle,
      //               colors: colorizeColors,
      //             ),
      //             ColorizeAnimatedText(
      //               'Bill Gates',
      //               textStyle: colorizeTextStyle,
      //               colors: colorizeColors,
      //             ),
      //             ColorizeAnimatedText(
      //               'Steve Jobs',
      //               textStyle: colorizeTextStyle,
      //               colors: colorizeColors,
      //             ),
      //           ],
      //           isRepeatingAnimation: true,
      //           onTap: () {
      //             print("Tap Event");
      //           }),
      //     ],
      //   ),
      // ),

          // body: Center(
          //   child: PageView(
          //     children: [
          //       TextLiquidFill(
          //         text: 'LIQUIDY',
          //         waveColor: Colors.blueAccent,
          //         boxBackgroundColor: Colors.redAccent,
          //         textStyle: TextStyle(
          //           fontSize: 75.0,
          //           fontWeight: FontWeight.bold,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
    ));
  }
}
