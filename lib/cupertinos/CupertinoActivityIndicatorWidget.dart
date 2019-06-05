import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActivityIndicatorWidget extends StatelessWidget{

  String title;


  CupertinoActivityIndicatorWidget(this.title);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
          centerTitle: true,
        ),
        body: new Center(
          child: new CupertinoActivityIndicator(
            radius: 30.0,
          ),
        ),
      ),
    );
  }

}