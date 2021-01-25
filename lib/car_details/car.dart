import 'package:first_project/car_details/newpage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp()); 
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp( 
       debugShowCheckedModeBanner: false, 
       theme: new ThemeData(
         primarySwatch: Colors.blue
       ), 
      home: CarCard(),
      // routes: {
      //   "/a": (BuildContext context) => new NewPages("Heloo"),
      // }
    );
  }
}

class CarCard extends StatefulWidget {
  CarCard({Key key}) : super(key: key);

  @override
  _CarCardState createState() => _CarCardState();
}

class _CarCardState extends State<CarCard> {
  var defaultTargetPlatorm;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text('Vehicle'),
        elevation: defaultTargetPlatform == TargetPlatform.android?5.0:0.0,
      ),
      drawer:new Drawer(
          child: new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: new Text("Tashi Phuntsho"),
                accountEmail: new Text("tashi@gmail.com"),
                currentAccountPicture: new CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  child: new Text("Ta"),
                ),
                otherAccountsPictures: <Widget> [
                  new  CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                  child: new Text("pq"),
                  )
                ],
              ),
              new ListTile(
               title: new Text("page one"),
               trailing: new Icon(Icons.arrow_upward), 
              //  onTap: () => Navigator.of(context).pushNamed("/a"), Using route
                onTap: () { 
                  Navigator.pop(context);

                  Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> NewPages("new Page")));
                }

              ),
              new ListTile(
               title: new Text("new page"),
               trailing: new Icon(Icons.arrow_downward), 
              ),
              new Divider(),
              new ListTile(
               title: new Text("close here"),
               trailing: new Icon(Icons.close), 
               onTap: ()=> Navigator.of(context).pop(),
              ),
            ],
          ) ,
      ),
      body:new Container(
        child : new Center(
          child: Text("Hello"),
        )
      ) ,
    );
  }
}
