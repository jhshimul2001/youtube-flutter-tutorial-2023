import 'dart:async';

import 'package:flutter/material.dart';

class Streambuilders extends StatefulWidget {
  const Streambuilders({Key? key}) : super(key: key);

  @override
  State<Streambuilders> createState() => _StreambuildersState();
}

class _StreambuildersState extends State<Streambuilders> {
  final TextEditingController _controller = TextEditingController();
  StreamController _streamController = StreamController();
  List<String> datalist = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("languages"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextField(
            controller: _controller,
          ),
          SizedBox(
            width: 300,
            child: ElevatedButton(
              onPressed: () {
                final input = _controller.text;
                datalist.add(input);
                _streamController.sink.add(datalist);
                _controller.clear();
              },
              child: Text("Add new languages"),
            ),
          ),
          Expanded(
              child: StreamBuilder(
                stream: _streamController.stream,
                builder: (context,snapshot) {
                  if(snapshot.hasData){
                    return ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (context,index){
                      return Card(
                        child: ListTile(
                          title: Text(snapshot.data[index]),
                        ),
                      );
                    });
                  }else{
                    return Center(
                      child: Text(
                        'empty list',style: TextStyle(fontSize: 40),
                      ),
                    );
                  }
                },

              ))
        ],
      ),
    );
  }
}
