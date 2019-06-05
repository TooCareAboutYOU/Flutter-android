import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoAlertDialogWidget extends StatelessWidget {
  String title;

  CupertinoAlertDialogWidget(this.title);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        backgroundColor: Colors.deepPurple,
        body: new Center(
          child: new CupertinoAlertDialog(
            title: new Text(title),
            content: new SingleChildScrollView(
              //对话框内容
              child: new ListBody(
                children: <Widget>[
                  new Text('是否删除？'),
                  new Text('一旦删除数据不可用恢复!'),
                ],
              ),
            ),
            actions: <Widget>[
              new CupertinoDialogAction(
                child: new Text('确认'),
                onPressed: () {},
              ),
              new CupertinoDialogAction(
                child: new Text('取消'),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
