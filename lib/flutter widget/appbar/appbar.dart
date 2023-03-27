
import 'package:flutter/material.dart';

class Appbars extends StatefulWidget {
  const Appbars({Key? key}) : super(key: key);

  @override
  State<Appbars> createState() => _AppbarsState();
}

class _AppbarsState extends State<Appbars> {
  mySnackbar(message,context){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        toolbarOpacity: 1,
        title: Text("flutter",style: TextStyle(fontSize: 25),),
        centerTitle: true,
        toolbarHeight: 70,
        // titleSpacing: 40,
        elevation: 50,
        backgroundColor: Colors.green,
        actions: [
          IconButton(onPressed: (){
            mySnackbar('i am comment', context);
          }, icon: Icon(Icons.comment),color: Colors.blue,),
          IconButton(onPressed: (){
            mySnackbar('i am account', context);
          }, icon: Icon(Icons.account_circle)),
          IconButton(onPressed: (){

          }, icon: Icon(Icons.add)),
        ],
        leading:  IconButton(onPressed: (){
          mySnackbar('search', context);
        }, icon: Icon(Icons.search)),
      ),
    ));
  }
}