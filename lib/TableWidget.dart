import 'package:flutter/material.dart';

class TableWidget extends StatelessWidget {
  final String title;

  TableWidget(this.title);

  @override
  Widget build(BuildContext context) {
    Center center = new Center(
      child: new Table(
        //设置表格多少列，并且指定列宽
        columnWidths: <int, TableColumnWidth>{
          0: FixedColumnWidth(80.0),
          1: FixedColumnWidth(80.0),
          2: FixedColumnWidth(80.0),
          3: FixedColumnWidth(80.0),
        },
        //设置表格样式
        border: new TableBorder.all(
            color: Colors.black38,
            width: 3.0,
            style: BorderStyle.solid
        ),
        children: <TableRow>[
          //添加第一条数据
          TableRow(
            children: <Widget>[
              new Text('姓名'),
              new Text('性别'),
              new Text('年龄'),
              new Text('身高'),
            ]
          ),
          //添加第二条数据
          TableRow(
              children: <Widget>[
                new Text('Tom'),
                new Text('man'),
                new Text('18'),
                new Text('183'),
              ]
          ),
          //添加第三条数据
          TableRow(
              children: <Widget>[
                new Text('David'),
                new Text('woman'),
                new Text('22'),
                new Text('167'),
              ]
          ),
        ],
      ),
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
        centerTitle: true,
      ),
      body: new Center(child: center),
    );
  }
}
