import 'package:flutter/material.dart';

void main() => runApp(new AppWidget());

var title = 'Dismissible滑动删除';

class AppWidget extends StatelessWidget {
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
        body: new Center(
          child: new DismissiblePage(),
        ),
      ),
    );
  }
}

class DismissiblePage extends StatelessWidget {
  //构建30条列表数据
  final List<String> list =
      new List<String>.generate(30, (int index) => "列表项 ${index + 1}");

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      //指定列表长度
      itemCount: list.length,
      //构建列表
      itemBuilder: (context, index) {
        //提取出被删除的项
        final String item = list[index];
        //返回一个可以被删除的列表项
        return new Dismissible(
          key: new Key(item),
          //被删除回调
          onDismissed: (direction) {
            //移除指定索引项
            list.removeAt(index);
            //底部弹出消息提示当前被删除了
            Scaffold.of(context).showSnackBar(
              new SnackBar(
                content: new Text('$item 被删除了'),
              ),
            );
          },
          child: new ListTile(
            title: new Text('$item'),
          ),
        );
      },
    );
  }
}
