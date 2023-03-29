import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            // flutter types of button
          floatingActionButton: FloatingActionButton(
            onPressed: (){},
            child: Icon(Icons.add),
          ),
              body: Row(
                children: [
                  TextButton(onPressed: (){}, child: Text("textbutton")),
                  ElevatedButton(onPressed: (){}, child: Text("elevatedbutton")),
                  OutlinedButton(onPressed: (){}, child: Text("outlinebutton")),
                  MaterialButton(onPressed: (){},child: Text("materialbutton"),),
                 // FloatingActionButton(onPressed: (){},child: Text("FloatingActionButton"),)
                ],
              ),
            ));
  }
}
