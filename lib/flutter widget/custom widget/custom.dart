import 'package:flutter/material.dart';
import 'package:youtube_flutter_project/flutter%20widget/simple%20form/simple_form.dart';


class Welcomepage extends StatefulWidget {
  const Welcomepage({Key? key}) : super(key: key);

  @override
  State<Welcomepage> createState() => _WelcomepageState();
}

class _WelcomepageState extends State<Welcomepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/image/shimul.jpg")
            )
          ),
          child: Padding(
            padding:  EdgeInsets.only(top: 95.0),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Flutter Community",
                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 35),
                    ),
                    SizedBox(height: 10 ),
                    loginMethod(),
                    signUpMethod(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Login Button Method Widget
  Widget loginMethod(){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: 200,
      height: 50,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: MaterialButton(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          color: Colors.green,
          splashColor: Colors.grey,
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Simple_form()));
          },
          child: Text(
            'Login',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }

  // Signup button method widget
  Widget signUpMethod (){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: 200,
      height: 50,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: MaterialButton(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          color: Colors.blue,
          splashColor: Colors.lightGreen,
          onPressed: (){
           Navigator.push(context, MaterialPageRoute(builder: (context)=> Simple_form()));
          },
          child: Text(
            'Sign up',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}




