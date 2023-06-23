import 'package:flutter/material.dart';

class Opacitys extends StatefulWidget {
  const Opacitys({Key? key}) : super(key: key);

  @override
  State<Opacitys> createState() => _OpacitysState();
}

class _OpacitysState extends State<Opacitys> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'flutter with shimul',
            style: TextStyle(fontSize: 25),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Opacity(
                opacity: 1.0,
                child: Container(
                  width: double.infinity,
                  height: 150,
                  color: Colors.blue,
                  alignment: Alignment.center,
                  child: Text('Opacity = 1'),
                )),
            // Opacity = 0.6
            Opacity(
                opacity: 0.6,
                child: Container(
                  width: double.infinity,
                  height: 150,
                  color: Colors.blue,
                  alignment: Alignment.center,
                  child: Text('Opacity = 0.6'),
                )),
            // Opacity = 0.3
            Opacity(
                opacity: 0.3,
                child: Container(
                  width: double.infinity,
                  height: 150,
                  color: Colors.blue,
                  alignment: Alignment.center,
                  child: Text('Opacity = 0.3'),
                )),

            // This one takes place but it's invisible
            Opacity(
                opacity: 0.1,
                child: Container(
                  width: double.infinity,
                  height: 150,
                  color: Colors.blue,
                  alignment: Alignment.center,
                  child: Text('Opacity = 0'),
                )),
          ],
        ));
  }
}
