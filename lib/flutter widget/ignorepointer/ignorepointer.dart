import 'package:flutter/material.dart';

class Ignorepointers extends StatefulWidget {
  const Ignorepointers({Key? key}) : super(key: key);

  @override
  State<Ignorepointers> createState() => _IgnorepointersState();
}

class _IgnorepointersState extends State<Ignorepointers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Stack(
            children: [
              GestureDetector(
                onTap: (){
                  print("click blue");
                },
                child: Container(
                  height: 300,
                  width: 320,
                  child: Card(
                    color: Colors.blue,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black, width: 1)),
                  ),
                ),
              ),

              Positioned(
                left: 80,
                top: 80,
                child: GestureDetector(
                  onTap: (){
                    print("click up guesture");
                  },
                  child: IgnorePointer(
                    ignoring: true,
                    child: GestureDetector(
                      onTap: (){
                        print("click down guesture");
                      },
                      child: Container(
                        height: 150,
                        width: 150,
                        child: Card(
                          color: Colors.green,
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.black, width: 1)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
