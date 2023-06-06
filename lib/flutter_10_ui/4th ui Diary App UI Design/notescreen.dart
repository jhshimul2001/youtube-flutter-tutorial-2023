import 'package:flutter/material.dart';

class NoteScreen extends StatefulWidget {
  const NoteScreen({Key? key}) : super(key: key);

  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('new note',style: TextStyle(color: Colors.black),),
         backgroundColor: Colors.white,
         elevation: 1,
       ),
       body: ListView(
         padding: EdgeInsets.all(15),
         children: [
           TextField(
             decoration: InputDecoration(
               hintText: 'Enter your name',
               prefixIcon: Icon(Icons.title),
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(10)
               )
             ),
           ),
           SizedBox(height: 20,),
           TextField(
             maxLines: 20,
             keyboardType: TextInputType.text,
             textAlign: TextAlign.start,
             decoration: InputDecoration(
                 hintText: 'Start typing here',
                 border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(10)
                 )
             ),
           ),
         ],
       ),
       bottomSheet: Container(
         margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
         width: double.infinity,
         child: ElevatedButton(onPressed: (){
             Navigator.pop(context);
         },child: Text('save'),),
       ),
     );
  }
}