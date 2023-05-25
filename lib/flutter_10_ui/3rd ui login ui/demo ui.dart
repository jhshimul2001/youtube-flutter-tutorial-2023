import 'package:flutter/material.dart';
import 'package:youtube_flutter_project/flutter_10_ui/2nd%20ui/propile.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Login',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold,fontSize: 30)),
                Text('Login to continue',
                    style: TextStyle(color: Colors.white54,fontSize: 20))
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30))),
              child: ListView(
                padding:  EdgeInsets.all(20),
                children: [
                   SizedBox(height: 20),
                  Container(
                    padding:  EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              offset:  Offset(0, 5),
                              color: Colors.green.withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius: 10
                          )
                        ]),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Email', border: InputBorder.none),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    padding:  EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 5),
                              color: Colors.green.withOpacity(.2),
                              spreadRadius: 5,
                              blurRadius: 10)
                        ]),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Password', border: InputBorder.none),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: TextButton(
                        onPressed: () {},
                        child:  Text('Forgot password?')),
                  ),
                   SizedBox(height: 10),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> profiledemo()));
                    },
                    style: ElevatedButton.styleFrom(
                        padding:  EdgeInsets.all(15)),
                    child:  Text('Login',style: TextStyle(fontSize: 18),),
                  ),
                   SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text("Don't Have an account?"),
                      TextButton(
                          onPressed: () {},
                          child:  Text('Create account'))

                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
