import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Fromvalidations extends StatefulWidget {
  const Fromvalidations({Key? key}) : super(key: key);

  @override
  State<Fromvalidations> createState() => _FromvalidationsState();
}

class _FromvalidationsState extends State<Fromvalidations> {
  bool isv = false;

  final _keyfrom = GlobalKey<FormState>();

  final emailcontroller = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(30.0),
      child: Form(
        key: _keyfrom,
        child: ListView(
          children: [
            SizedBox(height: 30,),
            Image.asset('assets/image/codec.png',height: 180,width: 200,),
            Align(alignment: Alignment.center,child: Text("Flutter with shimul",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
            SizedBox(height: 5,),
            Align(alignment: Alignment.center,child: Text("Subscribe my youtube channel",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),)),
            SizedBox(height: 50,),
            TextFormField(
              keyboardType: TextInputType.name,
              controller: emailcontroller,
              validator: (value) {
                if (value != null || value!.isEmpty) {
                  if (
                  value.contains('@') && value.endsWith('.com')) {
                    return null;
                  }else {
                    return 'Enter a Valid Email Address';
                  }
                }
              },
              decoration: InputDecoration(

                suffixIcon: Icon(
                  Icons.call,
                  color: Colors.green,
                ),
                labelText: "Phone number",
                labelStyle: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                fillColor: Colors.grey[300],
                filled: true,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              obscureText: isv ? false : true,
              keyboardType: TextInputType.visiblePassword,
              controller: passwordController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "please enter your password";
                } else {
                  return null;
                }
              },
              decoration: InputDecoration(
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isv = !isv;
                      });
                    },
                    icon:
                        Icon(isv ? Icons.remove_red_eye : Icons.visibility_off),
                    color: Colors.blue),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelText: "Password",
                labelStyle: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo),
                fillColor: Colors.grey[300],
                filled: true,
                border:
                    OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                    ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                  onPressed: () {
                    if (_keyfrom.currentState!.validate()) {
                      // use the information provided
                    }
                  },
                  child: Text("Submit",style: TextStyle(fontSize: 20),)),
            ),
          ],
        ),
      ),
    ));
  }
}
