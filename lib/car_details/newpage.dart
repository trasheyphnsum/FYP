import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class NewPages extends StatelessWidget {
  final String title;

  NewPages(this.title);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
        elevation: defaultTargetPlatform == TargetPlatform.android?5.0:0.0,
      ),
      body: new Center(
        child: new Text(title),
      ),
    );
  }
}