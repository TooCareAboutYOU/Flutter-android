import 'package:flutter/material.dart';

class ScaffoldWidget extends StatelessWidget {

  final String title;


  ScaffoldWidget(this.title);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //头部元素 ，左边返回按钮、中间标题、右边菜单
      appBar: new AppBar(
        title: Text(title),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.playlist_play),
            tooltip: 'Air it',
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.playlist_add),
            tooltip: 'Restitch it',
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.playlist_add_check),
            tooltip: 'Repair it',
            onPressed: null,
          ),
        ],
      ),
      //视图内容部分
      body: new Center(
        child: Text('Scaffold容器'),
      ),
      //底部导航栏
      bottomNavigationBar: BottomAppBar(
        child: Container(height: 50.0),
      ),
      //添加FAB长按钮
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: '增加',
        child: Icon(Icons.account_balance),
      ),
      //FAB长按钮居中显示
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      persistentFooterButtons: <Widget>[
        Text('One'),
        Text('Two'),
        Text('Three'),
      ],
    );
  }
}
