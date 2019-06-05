import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {

  final String title;


  DrawerWidget(this.title);

  @override
  Widget build(BuildContext context) {
    AppBar appBar = new AppBar(title: Text(title));

    Drawer drawer = new Drawer(
      child: new ListView(
        children: <Widget>[
          //设置用户信息、头像、名称、Email等
          UserAccountsDrawerHeader(
            accountName: new Text('Hello World'),
            accountEmail: new Text('11751@qq.com'),
            //设置当前用户的头像
            currentAccountPicture: new CircleAvatar(
              backgroundImage: new AssetImage("images/music.png")
            ),
            onDetailsPressed: (){},
            //属性本来是用来设置当前用户的其他账号的头像，这里用来当QQ二维码图片展示
            otherAccountsPictures: <Widget>[
              new Container(
                child: Image.asset("images/music.png")
              )
            ],
          ),
          ListTile(
            leading: new CircleAvatar(child: Icon(Icons.color_lens)),  //导航栏菜单
            title: new Text('个性装扮'),
          ),
          ListTile(
            leading: new CircleAvatar(child: Icon(Icons.photo)),  //导航栏菜单
            title: new Text('我的相册'),
          ),
          ListTile(
            leading: new CircleAvatar(child: Icon(Icons.wifi)),  //导航栏菜单
            title: new Text('面流量特权'),
          ),
        ],
      ),
    );

    Scaffold scaffold = new Scaffold(appBar: appBar, drawer: drawer);
    return scaffold;
  }
}
