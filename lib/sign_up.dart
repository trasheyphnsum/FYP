import 'package:first_project/car_details/car.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());  
class MyApp extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) { 
    return new MaterialApp( 
       debugShowCheckedModeBanner: false, 
       theme: new ThemeData(
         primarySwatch: Colors.blue, 
       ), 
      home: CarCard(),
    );
  }  
} 
class SignUpForm extends StatefulWidget {  
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(
      appBar:  AppBar(
      title: Text('Vehicle'),
      ),
      body:SingleChildScrollView(
        child:Form(
        key: _formKey,
        child: Column(
         children: <Widget>[
            Container(
              margin: EdgeInsets.only(top:30),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left:15.0,right: 15.0,top:15,bottom: 0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        icon :Icon(
                          Icons.person,
                            color: Colors.lightBlue,
                        ),
                        labelText: 'Name',
                        hintText: 'Enter your name'
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:15.0,right: 15.0,top:15,bottom: 0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          icon :Icon(
                            Icons.phone,
                            color: Colors.lightBlue,
                            ),
                        labelText: 'Phone number',
                        hintText: 'Enter your phone number'
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:15.0,right: 15.0,top:15,bottom: 0),
                    child: TextField(

                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        icon :Icon(
                          Icons.mail,
                          color: Colors.lightBlue,
                          ),
                        labelText: 'Email',
                        hintText: 'Enter valid email id as abc@gmail.com'
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 15, bottom: 0),
                    child: TextField(
                      obscureText: true,
                      
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        icon :Icon(
                          Icons.lock,
                            color: Colors.lightBlue,
                          ),
                        labelText: 'Password',
                        hintText: 'Enter secure password'
                      ),
                    ),
                  ),
                
                Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 15, bottom: 0),
                    child: TextField(

                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        icon :Icon(
                          Icons.lock,
                          color: Colors.lightBlue,
                          ),
                        labelText: 'Confirm password',
                        hintText: 'Enter  password again for confirmation'
                      ),
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
                        onPressed:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CarCard()));
                        },
                        child: Text(
                          'Sign up',
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
                  },
                  child: Text(
                    'Already have an Account? Login',
                    style: TextStyle(color: Colors.blue, fontSize: 15),
                  ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    )
  ); 
  }
}


