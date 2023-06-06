import 'package:flutter/material.dart';

class ItemNote extends StatelessWidget {
  final Color color;
  ItemNote({required this.color});

  @override
  Widget build(BuildContext context) {
      return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: Offset(0,5),
              color: Colors.green.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5
            ),
          ]
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: color
              ),
              child: Column(
                children: [
                  Text('may',style: TextStyle(color: Colors.white),),
                  SizedBox(height: 5,),
                  Text('25',style: TextStyle(color: Colors.white),),
                  SizedBox(height: 5,),
                  Text('2023',style: TextStyle(color: Colors.white),),
                  SizedBox(height: 5,),
                ],
              ),
            ),
            Expanded(child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 5.0,vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Flutter",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
                  SizedBox(height: 5,),
                  Text("Flutter is an open source framework by Google for building beautiful",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 17),),
                ],
              ),
            ))
          ],
        ),
      );
  }
}