import 'package:flutter/material.dart';

class column_row extends StatefulWidget {
  const column_row({Key? key}) : super(key: key);

  @override
  State<column_row> createState() => _column_rowState();
}

class _column_rowState extends State<column_row> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("flutter"),
        leading: Icon(Icons.arrow_back),
      ),
       body: ListView(
         children: [
           Center(
             child: Text('column widget',style: TextStyle(fontSize: 25),),

           ),
           SizedBox(height: 20,),
           Column(
             children: [
               Center(
                 child: Container(
                   height: 100,
                   width: 100,
                   color: Colors.blue,
                   child: Text("I love flutter"),
                 ),
               ),
               SizedBox(height: 20,),
               Center(
                 child: Container(
                   height: 100,
                   width: 100,
                   color: Colors.green,
                   child: Text("I love flutter"),
                 ),
               ),
               SizedBox(height: 20,),
               Center(
                 child: Container(
                   height: 100,
                   width: 100,
                   color: Colors.grey,
                   child: Text("I love flutter"),
                 ),
               ),
             ],
           ),
           SizedBox(height: 20,),
           Center(
             child: Text("row widget",style: TextStyle(fontSize: 25),),
           ),
           SizedBox(height: 20,),
           SingleChildScrollView(
             scrollDirection: Axis.horizontal,
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Center(
                   child: Container(
                     height: 100,
                     width: 100,
                     color: Colors.grey,
                     child: Text("I love flutter"),
                   ),
                 ),
                 SizedBox(width: 20,),
                 Center(
                   child: Container(
                     height: 100,
                     width: 100,
                     color: Colors.blue,
                     child: Text("I love flutter"),
                   ),
                 ),
                 SizedBox(width: 20,),
                 Center(
                   child: Container(
                     height: 100,
                     width: 100,
                     color: Colors.green,
                     child: Text("I love flutter"),
                   ),
                 ),
                 SizedBox(width: 20,),
                 Center(
                   child: Container(
                     height: 100,
                     width: 100,
                     color: Colors.blue,
                     child: Text("I love flutter"),
                   ),
                 ),
                 SizedBox(width: 20,),
                 Center(
                   child: Container(
                     height: 100,
                     width: 100,
                     color: Colors.green,
                     child: Text("I love flutter"),
                   ),
                 ),
               ],
             ),
           )
         ],
       ),
    ));
  }
}
