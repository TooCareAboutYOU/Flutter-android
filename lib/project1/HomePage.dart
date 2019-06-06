import 'package:flutter/material.dart';

void main() => runApp(new HomePageLayout());

var title = '布局总结案例';

class HomePageLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> listView = new List<Widget>();
    listView.add(ImagePageLayout('http://i.annihil.us/u/prod/marvel/i/mg/f/40/54adba8b35f8b.png'));
    listView.add(addressContainer);
    listView.add(bottomContainerLayout);
    listView.add(textContainerLayout);

    return new MaterialApp(
      title: title,
      color: Colors.green,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
          centerTitle: true,
        ),
        body: ListView(
          children: listView,
        ),
      ),
    );
  }
}

class ImagePageLayout extends StatelessWidget {
  final String src;

  ImagePageLayout(this.src);

  @override
  Widget build(BuildContext context) {
    return new Image.network(
      src,
      width: 600.0,
//      height: 240.0,
      fit: BoxFit.cover, //图片填充整个父容器
    );
  }
}

Widget addressContainer = new Container(
  padding: EdgeInsets.all(32.0), //此部分私照间隔一定距离
  child: new Row(
    children: <Widget>[
      new Expanded(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start, //顶部对齐
          children: <Widget>[
            new Container(
              padding: EdgeInsets.only(bottom: 8.0), //与下面文本间隔一定距离
              child: new Text(
                '风景区地址',
                style: new TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            new Text(
              'Hello World!',
              style: new TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
      new Icon(
        Icons.star,
        color: Colors.grey[500],
      ),
      new Text('666'),
    ],
  ),
);

Widget bottomContainerLayout = new Container(
  //容器横向布局
  child: new Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly, //水平方向均匀排列每个元素
    children: <Widget>[
      buildButtonColumn(Icons.call, '电话'),
      buildButtonColumn(Icons.near_me, '导航'),
      buildButtonColumn(Icons.share, '分享'),
    ],
  ),
);

Column buildButtonColumn(IconData icon, String title) {
  Column column = new Column(
    crossAxisAlignment: CrossAxisAlignment.center, //垂直方向上居中对齐
    mainAxisSize: MainAxisSize.min, //垂直方向大小最小化
    children: <Widget>[
      new Icon(
        icon,
        color: Colors.lightGreen[600],
      ), //上面图标部分
      new Container(
        margin: EdgeInsets.only(top: 8.0),
        child: new Text(
          title,
          style: new TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
            color: Colors.lightGreen[600],
          ),
        ),
        padding: new EdgeInsets.only(bottom: 8.0),
      ),
    ],
  );
  return column;
}

Widget textContainerLayout = new Container(
  padding: EdgeInsets.all(32.0),
  child: new Text(
    '''
  工信部今日正式向中国电信、中国移动、中国联通、中国广电发放5G商用牌照。同时，工信部为5G牌照的发放对电信业务分类目录进行了修订，新增5G相关基础电信业务目录。

按照我国目前的5G布局计划表来看，与全球的5G部署节奏是同步的。

据外媒报道称，美国最大运营商AT&T已经在为年底推出的全球首个移动5G网络做准备，Verizon今年10月也将推出全球首个5G宽带。韩国运营商方面，SK电讯也宣布将在今年12月在首尔发布5G商用网络，2019年3月在韩国全境推出5G商用服务。全球都在抢占5G先机。

此前5月30日，英国电信运营商EE公司正式在伦敦等6个城市开通5G服务，英国广播公司当天借助华为5G设备完成了一次现场直播。截至目前，韩国、美国、瑞士、英国已开通5G服务。

广电在5G牌照分发中分得一本羹

目前，中国已经启动了6GHz以下的中频段5G规模部署，根据此前明确的频谱规划方案，方案可能如下：

中国电信和中国联通各拿3.5GHz频段的100MHz频谱；中国移动得2.6GHz频段的160MHz频谱；广电国网将得4.9GHz频段50MHz频谱，并将700MHz频段的96MHz带宽由工信部划归IMT使用。

关于三大运营商的频谱划分方案，此前业界已有传闻的中国联通和中国电信的频段坐实，但是频谱方面，2.6GHz频段大块都给了移动之后，联通和电信会将各自的此频段腾退。

作为中国最大的电信运营商，中国移动于2017年6月，在广州开通国内首个用于试点的5G基站，并于7月启动了一个试验网。2018年6月，中央网信办副主任杨小伟打通中国移动全球首个5G独立组网端到端系统全息视频通话，标志着5G独立组网技术的突破。

2019年，中国移动董事长杨杰披露了移动的5G+计划，将5G与人工智能、物联网、云计算、大数据和边缘计算等信息技术融合，和各方共同构建生态系统。

中国联通将其战略规划分为制定、验证和准备三个阶段。2017年，其与华为在上海完成了外场验证，在20MHz频谱上，将网络峰值速率提升至LTEFDD的4.8倍。

2019年中国联通合作伙伴大会上，联通发布了5G先锋计划，对外公布了首批5G友好体验终端，包括华为、中兴、OPPO、vivo和小米，但并未公布售价。
  ''',
    softWrap: true,
  ),
);
