import 'package:flutter/material.dart';

enum ConferenceItem { AddMember, LockConference, ModifyLayout, TurnoffAll }

class SimpleDialogWidget extends StatelessWidget {

  final String title;

  SimpleDialogWidget(this.title);

  @override
  Widget build(BuildContext context) {
    List<Widget> list = new List<Widget>();
    for (var i = 1; i < 4; i++) {
      String msg='第 $i 行信息';
      list.add(new SimpleDialogOption(child: new  Text(msg),onPressed: (){
        Scaffold.of(context).showSnackBar(new SnackBar(content: new Text(msg)));
      }));
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
