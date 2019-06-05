import 'package:flutter/material.dart';


enum ConferenceItem { AddMember, LockConference, ModifyLayout, TurnoffAll }

class PopupMenuButtonWidget extends StatelessWidget {

  final String title;


  PopupMenuButtonWidget(this.title);

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
          child: new FlatButton(
            onPressed: () {},
            child: new PopupMenuButton<ConferenceItem>(
              onSelected: (ConferenceItem result) {
                Scaffold.of(context).showSnackBar(
                    new SnackBar(content: new Text(result.index.toString())));
              },
              itemBuilder: (BuildContext context) => //菜单构造器
                  <PopupMenuEntry<ConferenceItem>>[
                    PopupMenuItem<ConferenceItem>(
                        value: ConferenceItem.AddMember,
                        child: new Text('添加成员')),
                    PopupMenuItem<ConferenceItem>(
                        value: ConferenceItem.AddMember,
                        child: new Text('锁定会议')),
                    PopupMenuItem<ConferenceItem>(
                        value: ConferenceItem.AddMember,
                        child: new Text('修改布局')),
                    PopupMenuItem<ConferenceItem>(
                        value: ConferenceItem.AddMember,
                        child: new Text('挂断所有')),
                  ],
            ),
          ),
        ),
      ),
    );
  }
}
