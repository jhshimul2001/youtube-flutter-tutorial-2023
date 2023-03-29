import 'package:flutter/material.dart';
import 'package:youtube_flutter_project/flutter%20widget/alert%20dialouge/alert.dart';
import 'package:youtube_flutter_project/flutter%20widget/appbar/appbar.dart';
import 'package:youtube_flutter_project/flutter%20widget/bottomnavigationbar/bottomnavigationbar.dart';
import 'package:youtube_flutter_project/flutter%20widget/card/card.dart';
import 'package:youtube_flutter_project/flutter%20widget/column_row/column_row.dart';
import 'package:youtube_flutter_project/flutter%20widget/container/container.dart';
import 'package:youtube_flutter_project/flutter%20widget/listtile/listtile.dart';
import 'package:youtube_flutter_project/flutter%20widget/mediaquery%20widget/mediaquery.dart';
import 'package:youtube_flutter_project/flutter%20widget/singlechildScrolview%20and%20listview%20widget/singlechild%20and%20listview.dart';
import 'package:youtube_flutter_project/flutter%20widget/tabbar%20with%20fragement/tabbar_with_fragement.dart';
import 'package:youtube_flutter_project/flutter%20widget/types%20of%20button/button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.cyan),
      color: Colors.green,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xffFF5F6D),
                Color(0xffFFC371)
              ]
            )
          ),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30,left: 100,right: 100),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Appbars()));
                  },
                  child: Text("Appbar"),
                  color: Colors.green,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30,left: 100,right: 100),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Containers()));
                  },
                  child: Text("container"),
                  color: Colors.green,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30,left: 100,right: 100),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> column_row()));
                  },
                  child: Text("column and row"),
                  color: Colors.green,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30,left: 100,right: 100),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> SinglechildScrolviews()));
                  },
                  child: Text("SingleChildScrollView and listview"),
                  color: Colors.green,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30,left: 100,right: 100),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Buttons()));
                  },
                  child: Text("types of button"),
                  color: Colors.green,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30,left: 100,right: 100),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Mediaquerys()));
                  },
                  child: Text("mediaquery"),
                  color: Colors.green,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30,left: 100,right: 100),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Cards()));
                  },
                  child: Text("card"),
                  color: Colors.green,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30,left: 100,right: 100),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Bottomnavigationbars()));
                  },
                  child: Text("Bottomnavigationbars"),
                  color: Colors.green,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30,left: 100,right: 100),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> TabbarwithFragement()));
                  },
                  child: Text("tabbar"),
                  color: Colors.green,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30,left: 100,right: 100),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Listtiles()));
                  },
                  child: Text("Listtile"),
                  color: Colors.green,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30,left: 100,right: 100),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> AlertDialouge()));
                  },
                  child: Text("AlertDialouge"),
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}