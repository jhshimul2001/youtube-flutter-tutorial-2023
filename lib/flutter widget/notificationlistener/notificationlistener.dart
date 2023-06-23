import 'package:flutter/material.dart';

class NotificationListeners extends StatefulWidget {
  const NotificationListeners({Key? key}) : super(key: key);

  @override
  State<NotificationListeners> createState() => _NotificationListenersState();
}

class _NotificationListenersState extends State<NotificationListeners> {
  String message = 'New';
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('flutter with shimul'),
        centerTitle: true,
      ),

      body: Column(
        children: [
          Container(
            height: 60,
            color: Colors.orangeAccent,
            child: Center(
              child: Text(
                message,
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
          ),

          // using NotificationListener Widget
          Expanded(
              child: NotificationListener<ScrollNotification>(

                onNotification: (scrollNotification) {
                  // Logic of scrollNotification
                  if (scrollNotification is ScrollStartNotification) {
                    setState(() {
                      message = 'Scroll Started';
                    });
                  } else if (scrollNotification is ScrollUpdateNotification) {
                    setState(() {
                      message = 'Scroll Updated';
                    });
                  } else if (scrollNotification is ScrollEndNotification) {
                    setState(() {
                      message = 'Scroll Ended';
                    });
                  }
                  return true;
                },
                child: ListView.builder(
                    itemCount: 100,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text('Item: $index'),
                      );
                    }),
              ))
        ],
      ),
    );
  }
}