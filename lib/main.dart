import 'package:flutter/material.dart';
import 'package:flutter_book/AppBarLayoutWidget.dart';
import 'package:flutter_book/BottomNavigationBarWidget.dart';
import 'package:flutter_book/CustomTabBarWidget.dart';
import 'package:flutter_book/DrawerWidget.dart';
import 'package:flutter_book/ScaffoldLayout.dart';
import 'package:common_utils/common_utils.dart';
import 'package:flutter_book/TabBarWidget.dart';

void main() => runApp(new MyApp());

var pages = {
  '/first',
  '/second',
  '/Scaffold',
  '/AppBar',
  '/BottomNavigationBar',
  '/TabBar',
  '/CustomTabBar',
  '/Drawer'
};
var globalCurrentPage = 0;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    LogUtil.init(isDebug: true, tag: 'MMain');

    Map<String, WidgetBuilder> map = new Map<String, WidgetBuilder>();
    for (var i = 0; i < pages.length; i++) {
      map[pages.elementAt(i)] = (BuildContext context) => HomePage(i);
    }
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new HomePage(0),
      title: 'Flutter示例',
      routes: map,
      initialRoute: pages.elementAt(0),
    );
  }
}

//-----------------------------------------首页-----------------------------------------
class HomePage extends StatefulWidget {
  HomePage(currentPage) {
    globalCurrentPage = currentPage;
  }

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    switch (globalCurrentPage) {
      case 0:
        {
          return new LoginPage();
        }
      case 1:
        {
          return new LoginResult();
        }
      case 2:
        {
          return new ScaffoldWidget();
        }
      case 3:
        {
          return new AppBarLayoutWidget();
        }
      case 4:
        {
          return new BottomNavigationBarWidget();
        }
      case 5:
        {
          return new TabBarWidget();
        }
      case 6:
        {
          return new CustomTabBarWidget();
        }
      case 7:{
        return new DrawerWidget();
      }
      default:
        return new LoginPage();
    }
  }
}

//-----------------------------------------登录页-----------------------------------------
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //全局key用来获取Form表单组件
  GlobalKey<FormState> loginKey = new GlobalKey<FormState>();

  //用户名
  String userName;

  //用户密码
  String userPwd;

  void login() {
    //读取当前的Form状态
    var loginForm = loginKey.currentState;
    //验证Form表单
    if (loginForm.validate()) {
      loginForm.save();
      print('userName：' + userName + ',userPwd：' + userPwd);
      Navigator.pushNamed(context, pages.elementAt(1));
    }
  }

  @override
  Widget build(BuildContext context) {


    return new MaterialApp(
      title: 'Form表单示例',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('登录'),
          centerTitle: true,
        ),
        body: new Column(
          children: <Widget>[
            new Container(
              padding: const EdgeInsets.all(16.0),
              child: new Form(
                  key: loginKey,
                  child: new Column(
                    children: <Widget>[
                      new TextFormField(
                        decoration: new InputDecoration(
                          labelText: '请输入姓名',
                        ),
                        validator: (value) {
                          return value.isEmpty ? '用户名不能为空' : null;
                        },
                        onSaved: (value) {
                          userName = value;
                        },
                      ),
                      new TextFormField(
                        decoration: new InputDecoration(
                          labelText: '请输入密码',
                        ),
                        obscureText: true,
                        //验证表单方法
                        validator: (value) {
                          return value.length < 6 ? "密码长度不够6位" : null;
                        },
                        onSaved: (value) {
                          userPwd = value;
                        },
                      ),
                    ],
                  )),
            ),
            new SizedBox(
              width: 340.0,
              height: 42.0,
              child: new RaisedButton(
                onPressed: login,
                child: new Text(
                  '登录',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ),
            new RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, pages.elementAt(2));
              },
              child: new Text(
                '跳转到ScaffOld布局',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
            new RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, pages.elementAt(3));
              },
              child: new Text(
                '跳转到AppBar布局',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
            new RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, pages.elementAt(4));
              },
              child: new Text(
                '跳转到BottomNavigationBarWidget布局',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
            new RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, pages.elementAt(5));
              },
              child: new Text(
                '跳转到TabBar布局',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
            new RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, pages.elementAt(6));
              },
              child: new Text(
                '跳转到自定义TabBar布局',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
            new RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, pages.elementAt(7));
              },
              child: new Text(
                '跳转到Darwer布局',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//-----------------------------------------登录结果页-----------------------------------------
class LoginResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '登录结果页',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('登录结果页'),
          centerTitle: true,
        ),
        body: new Center(
          child: Text(
            '恭喜，登录成功！',
            style: TextStyle(fontSize: 28.0),
          ),
        ),
      ),
    );
  }
}
