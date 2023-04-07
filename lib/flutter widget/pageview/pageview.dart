
import 'package:flutter/material.dart';
import 'package:youtube_flutter_project/flutter%20widget/pageview/3page/page1.dart';
import 'package:youtube_flutter_project/flutter%20widget/pageview/3page/page2.dart';
import 'package:youtube_flutter_project/flutter%20widget/pageview/3page/page3.dart';

class pageview extends StatefulWidget {
  const pageview({Key? key}) : super(key: key);

  @override
  State<pageview> createState() => _pageviewState();
}

class _pageviewState extends State<pageview> {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("Afran sarkar flutter tutorial"),
        leading: Icon(Icons.arrow_back),
      ),
   body: PageView(
     scrollDirection: Axis.vertical,
     controller: _controller,
     children: [
       page1(),
       page2(),
       page3()
     ],
   ),
    ));
  }
}
