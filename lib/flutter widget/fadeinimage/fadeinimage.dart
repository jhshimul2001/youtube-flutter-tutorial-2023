import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class Fadeinimages extends StatefulWidget {
  const Fadeinimages({Key? key}) : super(key: key);

  @override
  State<Fadeinimages> createState() => _FadeinimagesState();
}

class _FadeinimagesState extends State<Fadeinimages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ColorFiltered(
                colorFilter: ColorFilter.mode(Colors.green,BlendMode.modulate),
                child:  Image.asset(
                    'assets/image/codec.png',height: 200,width: 200,
                ),
              ),

              Badge(
                badgeContent: Text(
                  '5',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                badgeStyle: BadgeStyle(
                  badgeColor: Colors.green,
                ),
                child: Icon(Icons.person, size: 100),
              ),


            ],
          ),
        ),
    );
  }
}
