import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinosWidget extends StatelessWidget {
  final String title;

  CupertinosWidget(this.title);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: title,
      theme: ThemeData.light(), //浅色主题
      home: new ContainersPage(),
    );
  }
}

class ContainersPage extends StatefulWidget {
  @override
  _ContainersPageState createState() {
    return new _ContainersPageState();
  }
}

class _ContainersPageState extends State<ContainersPage> {
  @override
  Widget build(BuildContext context) {
    //最外层选项卡
    return new CupertinoTabScaffold(
      //底部选项卡
      tabBar: new CupertinoTabBar(
        backgroundColor: CupertinoColors.lightBackgroundGray, //选项卡背景色
        items: [
          //选项卡项，包含图片以及文字
          new BottomNavigationBarItem(
              icon: Icon(Icons.home), title: new Text('首页')),
          new BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.conversation_bubble),
              title: new Text('聊天')),
        ],
      ),
      tabBuilder: (context, index) {
        //选项卡绑定的视图
        return new CupertinoTabView(
          builder: (context) {
            switch (index) {
              case 0:
                {
                  return new HomePage();
                }
              case 1:
                {
                  return new ChatPage();
                }
            }
          },
        );
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new CupertinoPageScaffold(
      //基本布局结构，包含内容和导航栏
      navigationBar: new CupertinoNavigationBar(
        //导航栏 只包含中部标题部分
        middle: new Text('主页'),
      ),
      child: new Center(
        child: new Text(
          '首页',
          style: Theme.of(context).textTheme.button,
        ),
      ),
    );
  }
}

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new CupertinoPageScaffold(
        navigationBar: new CupertinoNavigationBar(
          leading: Icon(Icons.arrow_back),
          middle: new Text('聊天面板'),
          trailing: Icon(Icons.add),
        ),
        child: new Center(
          child: new Text(
            '聊天面板',
            style: Theme.of(context).textTheme.button,
          ),
        ));
  }
}
