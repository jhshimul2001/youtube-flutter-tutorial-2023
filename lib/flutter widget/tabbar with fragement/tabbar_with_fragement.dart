import 'package:flutter/material.dart';
import 'package:youtube_flutter_project/flutter%20widget/tabbar%20with%20fragement/tabar%20files/code.dart';
import 'package:youtube_flutter_project/flutter%20widget/tabbar%20with%20fragement/tabar%20files/contact.dart';
import 'package:youtube_flutter_project/flutter%20widget/tabbar%20with%20fragement/tabar%20files/home.dart';
import 'package:youtube_flutter_project/flutter%20widget/tabbar%20with%20fragement/tabar%20files/search.dart';


class TabbarwithFragement extends StatefulWidget {
  const TabbarwithFragement({Key? key}) : super(key: key);

  @override
  State<TabbarwithFragement> createState() => _TabbarwithFragementState();
}

class _TabbarwithFragementState extends State<TabbarwithFragement> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4, child: Scaffold(
      appBar: AppBar(
        title: Text("flutter"),
        bottom: TabBar(
          tabs: [
            Tab(icon: Icon(Icons.home),text: "home",),
            Tab(icon: Icon(Icons.search),text: "search",),
            Tab(icon: Icon(Icons.contact_page),text: "contact",),
            Tab(icon: Icon(Icons.code),text: "code",),
          ],
        ),
      ),
      body: TabBarView(
        physics: ScrollPhysics(),
        children: [
          home(),
          search(),
          contact(),
          code(),
        ],
      ),
    ),
      );
  }
}
