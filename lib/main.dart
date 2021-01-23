import 'package:first_project/sign_up.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());  
class MyApp extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      home: LoginForm(),  
      debugShowCheckedModeBanner: false,  
    );
  }  
} 
class LoginForm extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(
        centerTitle: true,
        title:Text("Sign In")),  
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top:110, bottom:20),
              child: Padding(
               //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      icon :Icon(
                        Icons.mail,
                        color: Colors.lightBlue,
                        ),
                      labelText: 'Email',
                      hintText: 'Enter valid email id as abc@gmail.com'),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom:20),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(

                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      icon :Icon(
                        Icons.lock,
                        color: Colors.lightBlue,
                        ),
                      labelText: 'Password',
                      hintText: 'Enter secure password'),
                ),
              ),
            ),
            FlatButton(
              onPressed: (){
              },
              child: Text(
                'Forgot Password',
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
            ),
            SizedBox(
              height: 20
            ),
            Center(
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(20)),
                child: FlatButton(
                  onPressed:(){},
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20
            ),
             FlatButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpForm()));
              },
              child: Text(
                'New User? Create Account',
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
            )
          ],
        ),
      ),
      );  
  }  
}   

