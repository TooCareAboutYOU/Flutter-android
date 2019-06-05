import 'package:flutter/material.dart';

enum ConferenceItem { AddMember, LockConference, ModifyLayout, TurnoffAll }

class AlertDialogWidget extends StatelessWidget {

  final String title;

  AlertDialogWidget(this.title);

  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey();

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
        key: scaffoldKey,
        appBar: new AppBar(
          title: new Text(title),
          centerTitle: true,
        ),
        body: new Center(
          child: new AlertDialog(
            title: new Text('提示：'),
            content: new SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  new Text('是否删除?'),
                  new Text('一旦删除数据不可恢复!'),
                ],
              ),
            ),
            actions: <Widget>[
              new FlatButton(
                child: new Text('确定'),
                onPressed: (){
//                  Scaffold.of(context).showSnackBar(new SnackBar(content: new Text('确定')));
                  snackBar.SnackBarByKey(scaffoldKey, context, "确定");
                },
              ),
              new FlatButton(
                child: new Text('取消'),
                onPressed: (){
                  snackBar.SnackBarByKey(scaffoldKey, context, "取消");
                },
              ),
            ],
          )
        ),
      ),
    );
  }
}

class snackBar {
  static SnackBarByKey(final GlobalKey<ScaffoldState> scaffoldkey, BuildContext context, String str) {
    final snackBar = new SnackBar(content: new Text(str));
    scaffoldkey.currentState.showSnackBar(snackBar);
  }
}
 

