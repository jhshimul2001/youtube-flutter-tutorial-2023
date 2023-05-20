import 'package:flutter/material.dart';

class FutureBuiders extends StatefulWidget {
  const FutureBuiders({Key? key}) : super(key: key);

  @override
  State<FutureBuiders> createState() => _FutureBuidersState();
}

class _FutureBuidersState extends State<FutureBuiders> {

Future<String> getData(){
  return Future.delayed(Duration(seconds: 2),(){
    throw "error ocurred";
    // return "Data loaded";
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: Center(
           child: FutureBuilder(
             future: getData(),
               builder: (context,snapshot){
             if(snapshot.connectionState == ConnectionState.waiting){
               return CircularProgressIndicator();
             }
             if(snapshot.hasData){
               return Text(snapshot.data.toString());
             }else{
               return Text(snapshot.error.toString());
             }
           })
         ),
    );
  }
}
