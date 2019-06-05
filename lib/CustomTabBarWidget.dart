import 'package:flutter/material.dart';

final List<TabItemView> list = <TabItemView>[
  TabItemView(title: '自驾', icon: Icons.directions_car),
  TabItemView(title: '自行车', icon: Icons.directions_bike),
  TabItemView(title: '轮船', icon: Icons.directions_boat),
  TabItemView(title: '公交车', icon: Icons.directions_bus),
  TabItemView(title: '火车', icon: Icons.directions_railway),
  TabItemView(title: '步行', icon: Icons.directions_walk)
];

class CustomTabBarWidget extends StatelessWidget {

  final String title;


  CustomTabBarWidget(this.title);

  @override
  Widget build(BuildContext context) {
    TabBar tabBar = new TabBar(
        tabs: list.map((TabItemView item) {
      Tab tab = new Tab(
        text: item.title,
        icon: new Icon(item.icon),
      );
      return tab;
    }).toList());

    AppBar appBar = new AppBar(title: new Text(title), bottom: tabBar);

    TabBarView tabBarView = new TabBarView(
        children: list.map((TabItemView item) {
      return new Padding(
          padding: EdgeInsets.all(16.0), child: new SelectedViewWidget(item));
    }).toList());

    Scaffold scaffold = new Scaffold(appBar: appBar, body: tabBarView);

    MaterialApp materialApp = new MaterialApp(
      home: new DefaultTabController(length: list.length, child: scaffold),
    );

    return materialApp;
  }
}

class SelectedViewWidget extends StatelessWidget {
  final TabItemView item;

  SelectedViewWidget(this.item);

  @override
  Widget build(BuildContext context) {
    final TextStyle style = Theme.of(context).textTheme.display1;
    Card card = new Card(
      color: Colors.white,
      child: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min, //垂直方向最小化处理
          crossAxisAlignment: CrossAxisAlignment.center, //水平方向居中对齐
          children: <Widget>[
            new Icon(item.icon, size: 128.0, color: style.color),
            new Text(item.title, style: style)
          ],
        ),
      ),
    );
    return card;
  }
}

class TabItemView {
  final String title;
  final IconData icon;

  TabItemView({this.title, this.icon});
}
