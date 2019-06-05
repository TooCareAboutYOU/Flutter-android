import 'package:flutter/material.dart';

class AppBarLayoutWidget extends StatelessWidget {
  final String title;

  AppBarLayoutWidget(this.title);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: title,
      home: new LayoutWidget(),
    );
  }
}

class LayoutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('自定义AppBar'),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), tooltip: '搜索', onPressed: null),
          IconButton(icon: Icon(Icons.add), tooltip: '添加', onPressed: null)
        ],
      ),
    );
  }
}
