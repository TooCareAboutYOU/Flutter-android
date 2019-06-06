import 'package:flutter/material.dart';

class BaseLineWidget extends StatelessWidget {
  final String title;

  BaseLineWidget(this.title);

  @override
  Widget build(BuildContext context) {
    Row row = new Row(
      //水平等间距排列子组件
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        //设置准基线
        new Baseline(
          baseline: 20.0,
          baselineType: TextBaseline.alphabetic,
          child: new Text(
            'AaBbCc',
            style: new TextStyle(
                fontSize: 18.0, textBaseline: TextBaseline.alphabetic),
          ),
        ),
        new Baseline(
          baseline: 120.0,
          baselineType: TextBaseline.alphabetic,
          child:new Container(
            width: 40.0,
            height: 40.0,
            color: Colors.green,
          ),
        ),
        new Baseline(
          baseline: 60.0,
          baselineType: TextBaseline.alphabetic,
          child: new Text(
            'DdEeFf',
            style: new TextStyle(
                fontSize: 26.0, textBaseline: TextBaseline.alphabetic),
          ),
        ),
      ],
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
        centerTitle: true,
      ),
      body: row,
    );
  }
}
