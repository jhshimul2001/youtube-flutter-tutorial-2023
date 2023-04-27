
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

class Imagepickers extends StatefulWidget {
  const Imagepickers({Key? key}) : super(key: key);

  @override
  State<Imagepickers> createState() => _ImagepickersState();
}

class _ImagepickersState extends State<Imagepickers> {

  File? _image;

 Future ChooseCamera() async{
    var image = await ImagePicker.platform.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image as File?;
    });
  }

  Future ChooseGallery() async{
    var image = await ImagePicker.platform.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image as File?;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("Afran sarkar flutter tutorial"),
        leading: Icon(Icons.arrow_back),
      ),
      body: Column(
        children: [
            Padding(
              padding:  EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(onPressed: (){
                    ChooseCamera();
                  },child: Icon(Icons.add_a_photo,size: 30,),),
                  SizedBox(width: 30,),
                  FloatingActionButton(onPressed: (){
                    ChooseGallery();
                  },child: Icon(Icons.games,size: 30,),),
                ],
              ),
            )
        ],
      ),
    ));
  }
}