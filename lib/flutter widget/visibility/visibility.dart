import 'package:flutter/material.dart';

class Visibilitys extends StatefulWidget {
  const Visibilitys({Key? key}) : super(key: key);

  @override
  State<Visibilitys> createState() => _VisibilitysState();
}

class _VisibilitysState extends State<Visibilitys> {
  bool _isvisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Visibility(
               visible: _isvisible,
               child: Container(
                 height: 200,
                 width: 200,
                 decoration: BoxDecoration(
                   shape: BoxShape.circle,
                     color: Colors.green
                 ),
               ),
             ),
            ElevatedButton(onPressed: (){
              setState(() {
                _isvisible = !_isvisible;
              });
            }, child: Text("click me"))
          ],
        ),
      ),
    );
  }
}
