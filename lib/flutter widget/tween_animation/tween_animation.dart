import 'package:flutter/material.dart';

class TweenAnimations extends StatefulWidget {
  const TweenAnimations({Key? key}) : super(key: key);

  @override
  State<TweenAnimations> createState() => _TweenAnimationsState();
}

class _TweenAnimationsState extends State<TweenAnimations>  with SingleTickerProviderStateMixin{

  late Animation animation;
  late AnimationController animationController;
  late Animation colorAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(vsync: this, duration: Duration(seconds: 4));
    animation = Tween(begin: 200.0,end: 100.0).animate(animationController);
    colorAnimation = ColorTween(begin: Colors.grey,end: Colors.blue).animate(animationController);
    animationController.addListener(() {
       print(animation.value);
       setState(() {

       });
    });
    animationController.forward();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: animation.value,
          width: animation.value,
          color:colorAnimation.value,
        ),
      ),
    );
  }
}
