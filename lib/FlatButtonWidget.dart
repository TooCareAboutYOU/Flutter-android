import 'package:flutter/material.dart';


class FlatButtonWidget extends StatelessWidget {

  final String title;


  FlatButtonWidget(this.title);

  @override
  Widget build(BuildContext context) {
    MaterialApp materialApp = new MaterialApp(
        title: title,
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text(title),
            centerTitle: true,
            leading: Icon(Icons.arrow_back),
          ),
          body: new Center(
            child: new FlatButton(
                onPressed: () {},
                child: new Text(
                  title,
                  style: TextStyle(fontSize: 24.0),
                )),
          ),
        ));

    return materialApp;
  }
}
