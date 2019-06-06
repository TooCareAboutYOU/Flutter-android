import 'package:flutter/material.dart';

class OffstageWidget extends StatefulWidget {
  final String title;

  OffstageWidget(this.title);

  @override
  State<StatefulWidget> createState() {
    return new _OffstageWidgetState();
  }
}

class _OffstageWidgetState extends State<OffstageWidget> {
  //状态控制是否显示文本组件
  bool mOffstageState = true;

  @override
  Widget build(BuildContext context) {
    Offstage offstage = new Offstage(
      offstage: mOffstageState, //控制是否显示
      child: new Text(
        'Hi,Flutter',
        style: new TextStyle(fontSize: 36.0),
      ),
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
        centerTitle: true,
      ),
      body: new Center(child: offstage),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          setState(() {
            mOffstageState = !mOffstageState;
          });
        },
        tooltip: '显示隐藏',
        child: new Icon(Icons.flip),
      ),
    );
  }
}
