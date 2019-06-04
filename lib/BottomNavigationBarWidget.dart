import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  @override
  _BottomNavigationBarState createState() {
    return _BottomNavigationBarState();
  }

  BottomNavigationBarWidget({Key key}) : super(key: key);
}

class _BottomNavigationBarState extends State<BottomNavigationBarWidget> {
  int _selectedIndex = 1; //当前选中的索引

  final _widgetOptions = [
    Text('Index 0: 信息'),
    Text('Index 1: 通讯录'),
    Text('Index 2: 发现'),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('BottomNavigationBar示例'),
        centerTitle: true,
        automaticallyImplyLeading: false,  //显示/隐藏Leading
      ),
      body: new Center(
        child: _widgetOptions.elementAt(_selectedIndex), //居中显示某一个文本
      ),
      bottomNavigationBar: new BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: new Icon(Icons.home), title: new Text('首页')),
          BottomNavigationBarItem(
              icon: new Icon(Icons.contacts), title: new Text('通讯录')),
          BottomNavigationBarItem(
              icon: new Icon(Icons.account_circle), title: new Text('我的')),
        ],
        currentIndex: _selectedIndex, //当前选中项的索引
        fixedColor: Colors.deepPurple, //,选中项的颜色
        onTap: _onItemTapped, //选中项的按下的处理
      ),
    );
  }

  //当前按下处理 设置当前索引为index值
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
