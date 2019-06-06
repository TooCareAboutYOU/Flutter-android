import 'package:flutter/material.dart';

void main() => runApp(new AppWidget());

var title = '用GestureDetector进行手势检测';

class AppWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: new Center(child: new GestureDetectorWidget(),),
      ),
    );
  }
}

class GestureDetectorWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //一定要吧被触摸的组件放在GestureDetector里面
    GestureDetector gestureDetector=new GestureDetector(
      onTap: (){
        //底部消息提示
        final snackBar=new SnackBar(content: new Text('你有按下了!'),);
        Scaffold.of(context).showSnackBar(snackBar);
      },
      //添加容器接收触摸动作
      child: new Container(
        padding: new EdgeInsets.all(25.0),
        decoration: new BoxDecoration(
          color: Theme.of(context).buttonColor,
          borderRadius: new BorderRadius.circular(10.0),
        ),
        child: new Text('测试按钮'),
      ),
    );
    return gestureDetector;
  }
}