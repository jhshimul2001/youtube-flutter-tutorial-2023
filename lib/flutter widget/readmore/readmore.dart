import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class ReadMores extends StatefulWidget {
  const ReadMores({Key? key}) : super(key: key);

  @override
  State<ReadMores> createState() => _ReadMoresState();
}

class _ReadMoresState extends State<ReadMores> {
  String text =
      "Flutter transforms the app development process. Build, test, and deploy beautiful mobile, web, desktop, and embedded apps from a single codebase.Get started";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.all(20),
          child: ReadMoreText(
            text,
            trimLines: 2,
            textAlign: TextAlign.justify,
            trimMode: TrimMode.Line,
            trimCollapsedText: 'showmore',
            trimExpandedText: 'showless',
            lessStyle:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
            moreStyle:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.blue[500]),
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
