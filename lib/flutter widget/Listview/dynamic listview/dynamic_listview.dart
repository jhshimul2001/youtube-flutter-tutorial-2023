
import 'package:flutter/material.dart';

class Dynamic_Listview_builder extends StatefulWidget {
  const Dynamic_Listview_builder({Key? key}) : super(key: key);

  @override
  State<Dynamic_Listview_builder> createState() => _Dynamic_Listview_builderState();
}

class _Dynamic_Listview_builderState extends State<Dynamic_Listview_builder> {

  var myList = [

    {'img' : 'https://blog.logrocket.com/wp-content/uploads/2022/02/Best-IDEs-Flutter-2022.png','title' : 'flutter'},
    {'img' : 'https://blog.logrocket.com/wp-content/uploads/2022/02/Best-IDEs-Flutter-2022.png','title' : 'flutter'},
    {'img' : 'https://blog.logrocket.com/wp-content/uploads/2022/02/Best-IDEs-Flutter-2022.png','title' : 'flutter'},
    {'img' : 'https://blog.logrocket.com/wp-content/uploads/2022/02/Best-IDEs-Flutter-2022.png','title' : 'flutter'},
    {'img' : 'https://blog.logrocket.com/wp-content/uploads/2022/02/Best-IDEs-Flutter-2022.png','title' : 'flutter'},
    {'img' : 'https://blog.logrocket.com/wp-content/uploads/2022/02/Best-IDEs-Flutter-2022.png','title' : 'flutter'},
    {'img' : 'https://blog.logrocket.com/wp-content/uploads/2022/02/Best-IDEs-Flutter-2022.png','title' : 'flutter'},
    {'img' : 'https://blog.logrocket.com/wp-content/uploads/2022/02/Best-IDEs-Flutter-2022.png','title' : 'flutter'},
    {'img' : 'https://blog.logrocket.com/wp-content/uploads/2022/02/Best-IDEs-Flutter-2022.png','title' : 'flutter'},
    {'img' : 'https://blog.logrocket.com/wp-content/uploads/2022/02/Best-IDEs-Flutter-2022.png','title' : 'flutter'},
    {'img' : 'https://blog.logrocket.com/wp-content/uploads/2022/02/Best-IDEs-Flutter-2022.png','title' : 'flutter'},
    {'img' : 'https://blog.logrocket.com/wp-content/uploads/2022/02/Best-IDEs-Flutter-2022.png','title' : 'flutter'},
    {'img' : 'https://blog.logrocket.com/wp-content/uploads/2022/02/Best-IDEs-Flutter-2022.png','title' : 'flutter'},
    {'img' : 'https://blog.logrocket.com/wp-content/uploads/2022/02/Best-IDEs-Flutter-2022.png','title' : 'flutter'},
    {'img' : 'https://blog.logrocket.com/wp-content/uploads/2022/02/Best-IDEs-Flutter-2022.png','title' : 'flutter'},
    {'img' : 'https://blog.logrocket.com/wp-content/uploads/2022/02/Best-IDEs-Flutter-2022.png','title' : 'flutter'},
    {'img' : 'https://blog.logrocket.com/wp-content/uploads/2022/02/Best-IDEs-Flutter-2022.png','title' : 'flutter'},
    {'img' : 'https://blog.logrocket.com/wp-content/uploads/2022/02/Best-IDEs-Flutter-2022.png','title' : 'flutter'},
    {'img' : 'https://blog.logrocket.com/wp-content/uploads/2022/02/Best-IDEs-Flutter-2022.png','title' : 'flutter'},

  ];

  snack(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dynamic Listview Builder'),
        centerTitle: true,
      ),
       body: ListView.builder(itemBuilder: (context,index){
         return GestureDetector(
           onTap: (){
             snack(myList[index]['title'], context);
           },
           child: Container(
             height: 220,
             margin: EdgeInsets.only(bottom: 10),
             child: Image.network(myList[index]['img']!),
           ),
         );
       },
         itemCount: myList.length,
       ),
    );
  }
}



