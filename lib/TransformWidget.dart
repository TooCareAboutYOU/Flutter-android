import 'package:flutter/material.dart';

class TransformWidget extends StatelessWidget {
  final String title;

  TransformWidget(this.title);

  @override
  Widget build(BuildContext context) {
    Transform transform = new Transform(
      alignment: Alignment.topRight,
      transform: Matrix4.rotationZ(0.5),
      child: new Container(
        padding: EdgeInsets.all(8.0),
        color: Color(0xFFE8581C),
        child: new Text(title + '示例'),
      ),
    );

    Center center = new Center(
      child: new Container(
        child: transform,
        color: Colors.grey,
      ),
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
        centerTitle: true,
      ),
      body: new Center(child: center),
    );
  }
}
