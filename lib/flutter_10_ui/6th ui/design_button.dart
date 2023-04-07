
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget{
   LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body : Center(
          child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.all(Radius.circular(15))
          ),
          child: Padding(
            padding:  EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text("Flutter community",style: TextStyle(fontSize: 30),),
                SizedBox(height: 25,),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your user name',
                    labelText: 'User Name',
                    labelStyle: TextStyle(
                        color: Colors.orange,
                        fontSize: 14
                    ),
                    hintStyle:  TextStyle(
                        color: Colors.redAccent,
                        fontSize: 14
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    prefixIcon: Icon(Icons.account_circle),
                  ),
                  keyboardType: TextInputType.text,
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your password',
                    labelText: 'Password',
                    labelStyle: TextStyle(
                        color: Colors.orange,
                        fontSize: 14
                    ),
                    hintStyle:  TextStyle(
                        color: Colors.redAccent,
                        fontSize: 14
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    prefixIcon: Icon(Icons.account_circle),
                  ),
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  obscuringCharacter: '*',
                ),
                SizedBox(height: 20,),
                LoginButton()
                // ElevatedButton(onPressed: (){}, child: Text('Login'))
              ],
            ),
          ),
      ),
        ),
    );
  }
}











class LoginButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: 150,
      height: 40,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: MaterialButton(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          color: Colors.blue,
          onPressed: (){},
          child: Text(
            'Login',
            style: TextStyle(color: Colors.white,fontSize: 21),
          ),
        ),
      ),
    );
  }
}