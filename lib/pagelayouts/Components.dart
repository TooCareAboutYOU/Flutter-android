import 'package:flutter/material.dart';

void main() => runApp(
//    new ContainerWidget()
//    new PaddingWidget()
//    new AlignWidget()
//    new RowWidget()
//new ColumnWidget()
//new FittedBoxWidget()
//    new StackAlignmentWidget()
//    new StackPositionedWidget()
    new IndexedStackWidget());

//-----------------------------------------Container-----------------------------------------
class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Container container = new Container(
      //添加装饰效果
      decoration: new BoxDecoration(
        color: Colors.grey,
      ),
      //子元素指定为一个垂直水平嵌套布局的组件
      child: new Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
              //使用Expanded防止内容溢出
              new Expanded(
                child: new Container(
                  width: 150.0,
                  height: 150.0,
                  //添加边框样式
                  decoration: new BoxDecoration(
                    //上下左右边框设置宽度为10.0，颜色为蓝灰色
                    border: new Border.all(width: 10.0, color: Colors.blueGrey),
                    //上下左右边框弧度设置为8.0
                    borderRadius: new BorderRadius.all(Radius.circular(8.0)),
                  ),
                  //上下左右增加边距
                  margin: new EdgeInsets.all(4.0),
                  //添加图片
                  child: new Image.asset('images/dingding.png'),
                ),
              ),
              new Expanded(
                child: new Container(
                  width: 150.0,
                  height: 150.0,
                  //添加边框样式
                  decoration: new BoxDecoration(
                    //上下左右边框设置宽度为10.0，颜色为蓝灰色
                    border: new Border.all(width: 10.0, color: Colors.blueGrey),
                    //上下左右边框弧度设置为8.0
                    borderRadius: new BorderRadius.all(Radius.circular(8.0)),
                  ),
                  //上下左右增加边距
                  margin: new EdgeInsets.all(4.0),
                  //添加图片
                  child: new Image.asset('images/youdao.png'),
                ),
              ),
            ],
          ),
          new Row(
            children: <Widget>[
              //使用Expanded防止内容溢出
              new Expanded(
                child: new Container(
                  width: 150.0,
                  height: 150.0,
                  //添加边框样式
                  decoration: new BoxDecoration(
                    //上下左右边框设置宽度为10.0，颜色为蓝灰色
                    border: new Border.all(width: 10.0, color: Colors.blueGrey),
                    //上下左右边框弧度设置为8.0
                    borderRadius: new BorderRadius.all(Radius.circular(8.0)),
                  ),
                  //上下左右增加边距
                  margin: new EdgeInsets.all(4.0),
                  //添加图片
                  child: new Image.asset('images/music.png'),
                ),
              ),
              new Expanded(
                child: new Container(
                  width: 150.0,
                  height: 150.0,
                  //添加边框样式
                  decoration: new BoxDecoration(
                    //上下左右边框设置宽度为10.0，颜色为蓝灰色
                    border: new Border.all(width: 10.0, color: Colors.blueGrey),
                    //上下左右边框弧度设置为8.0
                    borderRadius: new BorderRadius.all(Radius.circular(8.0)),
                  ),
                  //上下左右增加边距
                  margin: new EdgeInsets.all(4.0),
                  //添加图片
                  child: new Image.asset('images/wangyi.png'),
                ),
              ),
            ],
          ),
        ],
      ),
    );

    return new MaterialApp(
      title: 'Container布局',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Container'),
          centerTitle: true,
        ),
        body: container,
      ),
    );
  }
}

//-----------------------------------------Padding-----------------------------------------
class PaddingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Container container = new Container(
      width: 300.0,
      padding: new EdgeInsets.all(60.0), //容器上下左右填充设置为60.0
      decoration: new BoxDecoration(
        color: Colors.green,
        border: new Border.all(color: Colors.green, width: 8.0),
      ),
      child: new Container(
        width: 200.0,
        height: 200.0,
        decoration: new BoxDecoration(
          color: Colors.white,
          border: new Border.all(color: Colors.blue, width: 8.0),
        ),
        child: new FlutterLogo(),
      ),
    );

    return new MaterialApp(
      title: 'Container布局',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Padding'),
          centerTitle: true,
        ),
        body: new Center(
          child: container,
        ),
      ),
    );
  }
}

//-----------------------------------------Align 对齐布局-----------------------------------------
class AlignWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Stack stack = new Stack(
      children: <Widget>[
        //左上角
        new Align(
          alignment: new FractionalOffset(0.0, 0.0),
          child: new Image.asset(
            'images/dingding.png',
            width: 128.0,
            height: 128.0,
          ),
        ),
        //右上角
        new Align(
          alignment: new FractionalOffset(1.0, 0.0),
          child: new Image.asset(
            'images/dingding.png',
            width: 128.0,
            height: 128.0,
          ),
        ),
        //水平方向居中
        new Align(
          alignment: FractionalOffset.center,
          child: new Image.asset(
            'images/dingding.png',
            width: 128.0,
            height: 128.0,
          ),
        ),
        //左下角
        new Align(
          alignment: FractionalOffset.bottomLeft,
          child: new Image.asset(
            'images/dingding.png',
            width: 128.0,
            height: 128.0,
          ),
        ),
        //右下角
        new Align(
          alignment: FractionalOffset.bottomRight,
          child: new Image.asset(
            'images/dingding.png',
            width: 128.0,
            height: 128.0,
          ),
        ),
      ],
    );

    return new MaterialApp(
      title: 'Container布局',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Align'),
          centerTitle: true,
        ),
        body: new Center(
          child: stack,
        ),
      ),
    );
  }
}

//-----------------------------------------Row 水平布局-----------------------------------------
class RowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Row row = new Row(
      children: <Widget>[
        new Expanded(
          child: new Text(
            '左侧文本',
            textAlign: TextAlign.center,
          ),
        ),
        new Expanded(
          child: new Text(
            '中间文本',
            textAlign: TextAlign.center,
          ),
        ),
        new Expanded(
            child: new FittedBox(
          fit: BoxFit.contain,
          child: FlutterLogo(),
        )),
      ],
    );

    return new MaterialApp(
      title: 'Container布局',
      home: new Scaffold(
        backgroundColor: Colors.green,
        appBar: new AppBar(
          title: new Text('Row'),
          centerTitle: true,
        ),
        body: new Center(
          child: row,
        ),
      ),
    );
  }
}

//-----------------------------------------Column 水平布局-----------------------------------------
class ColumnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Column column = new Column(
      crossAxisAlignment: CrossAxisAlignment.start, //水平方向靠左对齐
      mainAxisSize: MainAxisSize.min, //主轴方向最小化处理
      children: <Widget>[
        new Text(
          '左侧文本',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18.0),
        ),
        new Text(
          '中间文本',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18.0),
        ),
        new FittedBox(
          fit: BoxFit.contain,
          child: FlutterLogo(),
        ),
      ],
    );

    return new MaterialApp(
      title: 'Container布局',
      home: new Scaffold(
        backgroundColor: Colors.green,
        appBar: new AppBar(
          title: new Text('Column'),
          centerTitle: true,
        ),
        body: column,
      ),
    );
  }
}

//-----------------------------------------FittedBox 缩放布局-----------------------------------------
class FittedBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FittedBox fittedBox = new FittedBox(
      fit: BoxFit.scaleDown, //改变填充属性值会得到不同的效果
      alignment: Alignment.topLeft,
      child: new Container(
        color: Colors.red,
        child: new Text('缩放布局'),
      ),
    );

    Container container = new Container(
      color: Colors.grey,
      width: 250.0,
      height: 250.0,
      child: fittedBox,
    );
    Center center = new Center(
      child: container,
    );

    return new MaterialApp(
      title: 'Container布局',
      home: new Scaffold(
        backgroundColor: Colors.green,
        appBar: new AppBar(
          title: new Text('FittedBox缩放布局'),
          centerTitle: true,
        ),
        body: center,
      ),
    );
  }
}

//-----------------------------------------Stack Alignment-----------------------------------------
class StackAlignmentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Stack stack = new Stack(
      alignment: Alignment.bottomRight,
      children: <Widget>[
        //底部添加一个头像
        new CircleAvatar(
          backgroundImage: new AssetImage('images/music.png'),
          radius: 100.0,
        ),
        //上面加一个容器，容器里面再放一段文本
        new Container(
          decoration: new BoxDecoration(color: Colors.black38),
          child: new Text(
            '哈哈哈',
            style: new TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );

    return new MaterialApp(
      title: 'Container布局',
      home: new Scaffold(
        backgroundColor: Colors.green,
        appBar: new AppBar(
          title: new Text('FittedBox缩放布局'),
          centerTitle: true,
        ),
        body: new Center(
          child: stack,
        ),
      ),
    );
  }
}

//-----------------------------------------Stack Positioned-----------------------------------------
class StackPositionedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Stack stack = new Stack(
      alignment: Alignment.bottomRight,
      children: <Widget>[
        new Image.network(
            'http://i.annihil.us/u/prod/marvel/i/mg/9/a0/54adb647b792d.png'),
        //设置定位布局
        new Positioned(
          bottom: 10.0,
          right: 100.0,
          child: new Text(
            'Ant man',
            style: new TextStyle(
                fontSize: 36.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'serif',
                color: Colors.white),
          ),
        ),
      ],
    );

    return new MaterialApp(
      title: 'Container布局',
      home: new Scaffold(
        backgroundColor: Colors.green,
        appBar: new AppBar(
          title: new Text('Stack Positioned'),
          centerTitle: true,
        ),
        body: new Center(
          child: stack,
        ),
      ),
    );
  }
}

//-----------------------------------------IndexedStack、OverflowBox、SizeBox、ConstrainedBox-----------------------------------------
class IndexedStackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = new IndexedStack(
      index: 8, //设置索引为 1 就只显示文本内容了
//      alignment: FractionalOffset(0.2, 0.2),
      children: <Widget>[
        new CircleAvatar(
          backgroundImage: new AssetImage('images/dingding.png'),
          radius: 100.0,
        ),

        new Container(
          decoration: new BoxDecoration(color: Colors.black38),
          child: new Text(
            'Ant man',
            style: new TextStyle(
                fontSize: 36.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'serif',
                color: Colors.white),
          ),
        ),

        new Image.network(
            'http://i.annihil.us/u/prod/marvel/i/mg/9/a0/54adb647b792d.png'),

        new Container(
          color: Colors.green,
          width: 200.0,
          height: 200.0,
          padding: EdgeInsets.all(5.0),
          child: new OverflowBox(
            alignment: Alignment.topLeft,
            maxWidth: 300.0,
            maxHeight: 500.0,
            child: new Container(
              color: Colors.blueGrey,
              width: 400.0,
              height: 400.0,
            ),
          ),
        ),

        //固定容器宽高大小
        new SizedBox(
          //固定宽度为200.0 ，高为300.0
          width: 200.0,
          height: 300.0,
          child: new Card(
            child: new Text(
              'SizeBox设置具体大小',
              style: TextStyle(fontSize: 36.0),
            ),
          ),
        ),

        //限定最大最小宽高布局
        new ConstrainedBox(
          constraints: new BoxConstraints(
            minWidth: 150.0,
            minHeight: 150.0,
            maxWidth: 220.0,
            maxHeight: 220.0,
          ),
          child: new Container(
            width: 300.0,
            height: 300.0,
            color: Colors.red,
          ),
        ),

        //限定最大宽高布局
        new Row(
          children: <Widget>[
            new Container(
              color: Colors.red,
              width: 150.0,
            ),
            new LimitedBox(
              maxWidth: 150.0, //设置最大宽度，限定child在此范围内
              child: new Container(
                color: Colors.lightGreen,
                width: 250.0,
              ),
            ),
          ],
        ),

        //调整宽高比
        new Container(
          height: 220.0,
          child: new AspectRatio(
            aspectRatio: 1.5, //调整比例  宽是高度的 1.5 倍，及 200x1.5
            child: new Container(
              color: Colors.green,
            ),
          ),
        ),

        //百分比布局
        new Container(
          height: 200.0,
          width: 200.0,
          color: Colors.blueGrey,
          child: new FractionallySizedBox(
            alignment: Alignment.center, //元素做上角对齐
            widthFactor: 0.5, //宽度因子：宽度乘以这个值 就是最后的宽度
            heightFactor: 2, //同上
            child: new Container(
              color: Colors.red,
            ),
          )
        ),

      ],
    );

    return new MaterialApp(
      title: 'Container布局',
      home: new Scaffold(
        backgroundColor: Colors.white,
        appBar: new AppBar(
          title: new Text('IndexedStack'),
          centerTitle: true,
        ),
        body: new Center(
          child: stack,
        ),
      ),
    );
  }
}
