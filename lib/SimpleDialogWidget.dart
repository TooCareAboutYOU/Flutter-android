import 'package:flutter/material.dart';

enum ConferenceItem { AddMember, LockConference, ModifyLayout, TurnoffAll }

class SimpleDialogWidget extends StatelessWidget {

  final String title;

  SimpleDialogWidget(this.title);

  @override
  Widget build(BuildContext context) {
    List<Widget> list = new List<Widget>();
    for (var i = 1; i < 10; i++) {
      list.add(new SimpleDialogOption(child: new  Text('第 $i 行信息'),onPressed: (){}));
    }

    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
          centerTitle: true,
        ),
        body: new Center(
          child: new FlatButton(
            onPressed: () {},
            child: new SimpleDialog(
              title: new Text('对话标题框'),
              children: list,
            ),
          ),
        ),
      ),
    );
  }
}
