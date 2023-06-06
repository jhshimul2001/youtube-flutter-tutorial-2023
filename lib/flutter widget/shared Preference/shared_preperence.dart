import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Shared_preference extends StatefulWidget {
  const Shared_preference({Key? key}) : super(key: key);

  @override
  State<Shared_preference> createState() => _Shared_preferenceState();
}

class _Shared_preferenceState extends State<Shared_preference> {
  int counter = 0;

  loadcounter()async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      counter =  pref.getInt('counter') ?? 0;
    });
  }

  increment() async{
    SharedPreferences pref =  await SharedPreferences.getInstance();
    setState(() {
      counter++;
      pref.setInt('counter', counter);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadcounter();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('you have clicked $counter',style: TextStyle(fontSize: 30),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: increment,
        tooltip: 'increment',
        child: Icon(Icons.add),
      ),
    );
  }
}