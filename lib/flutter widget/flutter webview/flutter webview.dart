import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class Flutterwebviews extends StatefulWidget {
  const Flutterwebviews({Key? key}) : super(key: key);

  @override
  State<Flutterwebviews> createState() => _FlutterwebviewsState();
}

class _FlutterwebviewsState extends State<Flutterwebviews> {
  var initialurl = "https://www.youtube.com/@jhsshimul7781/videos";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("flutter webview"), centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
              child: InAppWebView(
            initialUrlRequest: URLRequest(url: Uri.parse(initialurl)),
          ))
        ],
      ),
    );
  }
}
