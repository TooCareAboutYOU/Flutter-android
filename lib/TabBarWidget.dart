import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  //选项卡数据
  final List<Tab> tabs = <Tab>[Tab(text: '选项卡一'), Tab(text: '选项卡二')];

  final String title;


  TabBarWidget(this.title);

  @override
  Widget build(BuildContext context) {
    MaterialApp materialApp = new MaterialApp(
        //用来组装TabBar及TabBarView
        home: new DefaultTabController(
      length: tabs.length,
      child: new Scaffold(
        appBar: AppBar(
          //添加导航栏
          title: Text(title),
          centerTitle: true,
          bottom: TabBar(tabs: tabs),
        ),
        //添加导航视图
        body: new TabBarView(
            children: tabs.map((Tab tab) {
          return Center(child: Text(tab.text));
        }).toList()),
      ),
    ));
    return materialApp;
  }
}
