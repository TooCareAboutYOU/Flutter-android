import 'package:flutter/material.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  final String title;


  FloatingActionButtonWidget(this.title);

  MaterialApp materialApp;
  AppBar appBar;
  Center center;
  Scaffold scaffold;

  @override
  Widget build(BuildContext context) {

    materialApp = new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: Text(title),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: new Center(
          child: new Text(
            title,
            style: TextStyle(fontSize: 28.0),
          ),
        ),
        floatingActionButton: new Builder(builder: (BuildContext context) {
          return new FloatingActionButton(
            child: Icon(Icons.add),
            //提示信息
            tooltip: '请点击FloatingActionButton',
            //前景色为白色
            foregroundColor: Colors.white,
            //背景色为蓝色
            backgroundColor: Colors.blue,
            //为点击阴影值
            elevation: 7.0,
            //点击阴影值
            highlightElevation: 14.0,

            onPressed: () {
              //点击回调事件，弹出一句提示语
              Scaffold.of(context).showSnackBar(
                  new SnackBar(content: new Text('你点击了FloatingActionButton示例')));
            },
            mini: false,
            //圆形边
            isExtended: false,
            shape: new CircleBorder(),
          );
        }),
        //居中放置 位置可以设置成左中右
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      ),
    );

    return materialApp;
  }
}
