import 'package:flutter/material.dart';

class WrapWidget extends StatelessWidget {
  final String title;

  WrapWidget(this.title);

  @override
  Widget build(BuildContext context) {
    Wrap wrap = new Wrap(
      spacing: 8.0, //Chip之间的间隙大小
      runSpacing: 4.0, //行之间的间隙大小
      children: <Widget>[
        new Chip(
          //添加圆形头像
          avatar: new CircleAvatar(
            backgroundColor: Colors.lightGreen.shade800,
            child: new Text(
              'One',
              style: new TextStyle(fontSize: 8.0),
            ),
          ),
          label: new Text('one'),
        ),
        new Chip(
          //添加圆形头像
          avatar: new CircleAvatar(
            backgroundColor: Colors.lightGreen.shade800,
            child: new Text(
              'Two',
              style: new TextStyle(fontSize: 8.0),
            ),
          ),
          label: new Text('two'),
        ),
        new Chip(
          //添加圆形头像
          avatar: new CircleAvatar(
            backgroundColor: Colors.lightGreen.shade800,
            child: new Text(
              'Three',
              style: new TextStyle(fontSize: 8.0),
            ),
          ),
          label: new Text('哈哈哈哈哈'),
        ),
        new Chip(
          //添加圆形头像
          avatar: new CircleAvatar(
            backgroundColor: Colors.lightGreen.shade800,
            child: new Text(
              'Four',
              style: new TextStyle(fontSize: 8.0),
            ),
          ),
          label: new Text('four'),
        ),
        new Chip(
          //添加圆形头像
          avatar: new CircleAvatar(
            backgroundColor: Colors.lightGreen.shade800,
            child: new Text(
              'Five',
              style: new TextStyle(fontSize: 8.0),
            ),
          ),
          label: new Text('five'),
        ),
        new Chip(
          //添加圆形头像
          avatar: new CircleAvatar(
            backgroundColor: Colors.lightGreen.shade800,
            child: new Text(
              'Six',
              style: new TextStyle(fontSize: 8.0),
            ),
          ),
          label: new Text('Six'),
        ),
      ],
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
        centerTitle: true,
      ),
      body: wrap,
    );
  }
}
