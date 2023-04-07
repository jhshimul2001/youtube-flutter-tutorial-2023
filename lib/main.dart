import 'package:flutter/material.dart';
import 'package:youtube_flutter_project/flutter%20widget/Listview/Listview%20builder/listview_builders.dart';
import 'package:youtube_flutter_project/flutter%20widget/Listview/dynamic%20listview/dynamic_listview.dart';
import 'package:youtube_flutter_project/flutter%20widget/Listview/listview_separeted/listview_seperated.dart';
import 'package:youtube_flutter_project/flutter%20widget/alert%20dialouge/alert.dart';
import 'package:youtube_flutter_project/flutter%20widget/appbar/appbar.dart';
import 'package:youtube_flutter_project/flutter%20widget/bottomnavigationbar/bottomnavigationbar.dart';
import 'package:youtube_flutter_project/flutter%20widget/bottomsheet/bottom.dart';
import 'package:youtube_flutter_project/flutter%20widget/card/card.dart';
import 'package:youtube_flutter_project/flutter%20widget/column_row/column_row.dart';
import 'package:youtube_flutter_project/flutter%20widget/container/container.dart';
import 'package:youtube_flutter_project/flutter%20widget/container_decoration/container_decoration.dart';
import 'package:youtube_flutter_project/flutter%20widget/date_time/date_time.dart';
import 'package:youtube_flutter_project/flutter%20widget/drawer/drawer.dart';
import 'package:youtube_flutter_project/flutter%20widget/expanded%20widget/expanded.dart';
import 'package:youtube_flutter_project/flutter%20widget/hero/hero.dart';
import 'package:youtube_flutter_project/flutter%20widget/image%20widget/image_widget.dart';
import 'package:youtube_flutter_project/flutter%20widget/inkwell%20vs%20guesturedetector/ink%20vs%20gues.dart';
import 'package:youtube_flutter_project/flutter%20widget/liquaid%20swipe/swipe.dart';
import 'package:youtube_flutter_project/flutter%20widget/listtile/listtile.dart';
import 'package:youtube_flutter_project/flutter%20widget/mediaquery%20widget/mediaquery.dart';
import 'package:youtube_flutter_project/flutter%20widget/padding%20and%20margin/padding_margin.dart';
import 'package:youtube_flutter_project/flutter%20widget/pageview/pageview.dart';
import 'package:youtube_flutter_project/flutter%20widget/setstate/setstate.dart';
import 'package:youtube_flutter_project/flutter%20widget/simple%20form/simple_form.dart';
import 'package:youtube_flutter_project/flutter%20widget/singlechildScrolview%20and%20listview%20widget/singlechild%20and%20listview.dart';
import 'package:youtube_flutter_project/flutter%20widget/sliverappbar/sliverappbar.dart';
import 'package:youtube_flutter_project/flutter%20widget/stack/stack.dart';
import 'package:youtube_flutter_project/flutter%20widget/tabbar%20with%20fragement/tabbar_with_fragement.dart';
import 'package:youtube_flutter_project/flutter%20widget/types%20of%20button/button.dart';
import 'package:youtube_flutter_project/flutter_10_ui/10th%20ui/calculator.dart';
import 'package:youtube_flutter_project/flutter_10_ui/11th%20ui/flutter_login_page.dart';
import 'package:youtube_flutter_project/flutter_10_ui/11th%20ui/home_page.dart';
import 'package:youtube_flutter_project/flutter_10_ui/1st_ui/stack_image.dart';
import 'package:youtube_flutter_project/flutter_10_ui/2nd%20ui/propile.dart';
import 'package:youtube_flutter_project/flutter_10_ui/3rd%20ui/Textfromfirld.dart';
import 'package:youtube_flutter_project/flutter_10_ui/4th%20ui/login_page.dart';
import 'package:youtube_flutter_project/flutter_10_ui/5th%20ui/register_page.dart';
import 'package:youtube_flutter_project/flutter_10_ui/6th%20ui/design_button.dart';
import 'package:youtube_flutter_project/flutter_10_ui/8th%20ui/login_page.dart';
import 'package:youtube_flutter_project/flutter_10_ui/9th%20ui/demo_page.dart';


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
      initialRoute: '/',
      routes: {Homes.routeName: (ctx) => Homes()},
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
              Padding(
                padding: EdgeInsets.only(top: 30,left: 100,right: 100),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Expandeds()));
                  },
                  child: Text("Expandeds"),
                  color: Colors.green,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30,left: 100,right: 100),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Stacks()));
                  },
                  child: Text("stack"),
                  color: Colors.green,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30,left: 100,right: 100),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Drawers()));
                  },
                  child: Text("drawer"),
                  color: Colors.green,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30,left: 100,right: 100),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Image_asset_network()));
                  },
                  child: Text("Image_asset_network"),
                  color: Colors.green,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30,left: 100,right: 100),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Liquaid_swipe()));
                  },
                  child: Text("Liquaid swipe"),
                  color: Colors.green,
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 30,left: 100,right: 100),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> pageview()));
                  },
                  child: Text("pageview"),
                  color: Colors.green,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30,left: 100,right: 100),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Inkwell_vs_gesturedetector()));
                  },
                  child: Text("Inkwell_vs_gesturedetector"),
                  color: Colors.green,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30,left: 100,right: 100),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Heros()));
                  },
                  child: Text("hero"),
                  color: Colors.green,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30,left: 100,right: 100),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Sliverappbars()));
                  },
                  child: Text("Sliverappbars"),
                  color: Colors.green,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30,left: 100,right: 100),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Setstates()));
                  },
                  child: Text("setstate"),
                  color: Colors.green,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30,left: 100,right: 100),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Padding_Margin()));
                  },
                  child: Text("padding and margin"),
                  color: Colors.green,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30,left: 100,right: 100),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> bottomshets()));
                  },
                  child: Text("bottomsheet"),
                  color: Colors.green,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30,left: 100,right: 100),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Listview_builders()));
                  },
                  child: Text("Listview builders"),
                  color: Colors.green,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30,left: 100,right: 100),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Dynamic_Listview_builder()));
                  },
                  child: Text("dynamic Listview builders"),
                  color: Colors.green,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30,left: 100,right: 100),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>List_separeted()));
                  },
                  child: Text("Listview separated"),
                  color: Colors.green,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30,left: 100,right: 100),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Container_decoration()));
                  },
                  child: Text("Container decoration"),
                  color: Colors.green,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30,left: 100,right: 100),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Simple_form()));
                  },
                  child: Text("Simple form Textfield"),
                  color: Colors.green,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30,left: 100,right: 100),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Date_time()));
                  },
                  child: Text("Date time"),
                  color: Colors.green,
                ),
              ),





              //..........................  flutter ui design all class ..........................

             SizedBox(height: 50,),
              Padding(
                padding: EdgeInsets.only(left: 60.0,right: 60.0),
                child: MaterialButton(color: Colors.white,
                  hoverColor: Colors.grey,
                  splashColor: Colors.greenAccent,
                  height: 60,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>Login1stui()));
                  },
                  child: Text("Login1stui",style:TextStyle(fontSize: 24)),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.only(left: 60.0,right: 60.0),
                child: MaterialButton(color: Colors.white,
                  hoverColor: Colors.grey,
                  splashColor: Colors.greenAccent,
                  height: 60,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>profiledemo()));
                  },
                  child: Text("profiledemo",style:TextStyle(fontSize: 24)),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.only(left: 60.0,right: 60.0),
                child: MaterialButton(color: Colors.white,
                  hoverColor: Colors.grey,
                  splashColor: Colors.greenAccent,
                  height: 60,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>createac()));
                  },
                  child: Text("Login1stui",style:TextStyle(fontSize: 24)),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.only(left: 60.0,right: 60.0),
                child: MaterialButton(color: Colors.white,
                  hoverColor: Colors.grey,
                  splashColor: Colors.greenAccent,
                  height: 60,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>MyRegister()));
                  },
                  child: Text("Register-page",style:TextStyle(fontSize: 24)),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.only(left: 60.0,right: 60.0),
                child: MaterialButton(color: Colors.white,
                  hoverColor: Colors.grey,
                  splashColor: Colors.greenAccent,
                  height: 60,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>MyLogin()));
                  },
                  child: Text("Login-page",style:TextStyle(fontSize: 24)),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.only(left: 60.0,right: 60.0),
                child: MaterialButton(color: Colors.white,
                  hoverColor: Colors.grey,
                  splashColor: Colors.greenAccent,
                  height: 60,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>LoginForm()));
                  },
                  child: Text("Login and signup button",style:TextStyle(fontSize: 24)),
                ),
              ),

              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.only(left: 60.0,right: 60.0),
                child: MaterialButton(color: Colors.white,
                  hoverColor: Colors.grey,
                  splashColor: Colors.greenAccent,
                  height: 60,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>HomePage()));
                  },
                  child: Text("home page",style:TextStyle(fontSize: 24)),
                ),
              ),
              SizedBox(height: 20,),

              Padding(
                padding: EdgeInsets.only(left: 60.0,right: 60.0),
                child: MaterialButton(color: Colors.white,
                  hoverColor: Colors.grey,
                  splashColor: Colors.greenAccent,
                  height: 60,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>HomePages()));
                  },
                  child: Text("demo page",style:TextStyle(fontSize: 24)),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.only(left: 60.0,right: 60.0),
                child: MaterialButton(color: Colors.white,
                  hoverColor: Colors.grey,
                  splashColor: Colors.greenAccent,
                  height: 60,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>Calculator()));
                  },
                  child: Text("Calculator",style:TextStyle(fontSize: 24)),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.only(left: 60.0,right: 60.0),
                child: MaterialButton(color: Colors.white,
                  hoverColor: Colors.grey,
                  splashColor: Colors.greenAccent,
                  height: 60,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>flutter_login_page()));
                  },
                  child: Text("Flutter login page",style:TextStyle(fontSize: 24)),
                ),
              ),
              SizedBox(height: 20,),


            ],
          ),
        ),
      ),
    );
  }
}