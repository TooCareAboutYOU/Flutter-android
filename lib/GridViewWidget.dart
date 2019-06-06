import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  final String title;

  GridViewWidget(this.title);

  @override
  Widget build(BuildContext context) {
    //使用generate构造图片列表
    List<Container> list(int count) {
      return new List<Container>.generate(
        count,
        (int index) => new Container(
              child: new Image.asset('images/music.png'),
            ),
      );
    }

    //渲染GridView
    Widget buildGrid() {
      return new GridView.extent(
        //次轴的高度
        maxCrossAxisExtent: 150.0,
        //上下左右内边距
        padding: EdgeInsets.all(4.0),
        //主轴间隙
        mainAxisSpacing: 4.0,
        //次轴间隙
        crossAxisSpacing: 4.0,
        //添加9个元素
        children: list(9),
      );
    }

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
        centerTitle: true,
      ),
      body: new Center(child: buildGrid()),
    );
  }
}
