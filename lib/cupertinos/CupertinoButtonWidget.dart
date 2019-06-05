import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoButtonWidget extends StatelessWidget {
  String title;

  CupertinoButtonWidget(this.title);

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
          child: new CupertinoButton(child: new Text(title), color: Colors.deepPurple,onPressed: () {}),
        ),
      ),
    );
  }
}
