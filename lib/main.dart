import 'package:flutter/material.dart';
import 'package:flutter_book/AlertDialogWidget.dart';
import 'package:flutter_book/AppBarLayoutWidget.dart';
import 'package:flutter_book/BottomNavigationBarWidget.dart';
import 'package:flutter_book/CustomTabBarWidget.dart';
import 'package:flutter_book/DrawerWidget.dart';
import 'package:flutter_book/FlatButtonWidget.dart';
import 'package:flutter_book/FloatingActionButtonWidget.dart';
import 'package:flutter_book/GridViewWidget.dart';
import 'package:flutter_book/PopupMenuButtonWidget.dart';
import 'package:flutter_book/ScaffoldLayout.dart';
import 'package:common_utils/common_utils.dart';
import 'package:flutter_book/SimpleDialogWidget.dart';
import 'package:flutter_book/TabBarWidget.dart';
import 'package:flutter_book/TableWidget.dart';
import 'package:flutter_book/TransformWidget.dart';
import 'package:flutter_book/cupertinos/CupertinoActivityIndicatorWidget.dart';
import 'package:flutter_book/cupertinos/CupertinoAlertDialogWidget.dart';
import 'package:flutter_book/cupertinos/CupertinoButtonWidget.dart';
import 'package:flutter_book/cupertinos/Cupertinos.dart';

void main() => runApp(new MyApp());

final String TAG = 'MMain';
var TITLE = 'Hello Flutter';

var pages = {
  '/first',
  '/second',
  '/ScaffoldLayout',
  '/AppBarWidget',
  '/BottomNavigationBarWidget',
  '/TabBarWidget',
  '/CustomTabBarWidget',
  '/DrawerWidget',
  '/FloatingActionButtonWidget',
  '/FlatButtonWidget',
  '/PopupMenuButtonWidget',
  '/SimpleDialogWidget',
  '/AlertDialogWidget',
  '/CupertinoActivityIndicator',
  '/CupertinoAlertDialog',
  '/CupertinoButton',
  '/CupertinoComponent',
  '/GridViewWidget',
  '/TableWidget',
  '/TransformWidget'
};

var titles = [
  '登录',
  '登录结果',
  '跳转到ScaffOld布局',
  '跳转到AppBar布局',
  '跳转到BottomNavigationBarWidget布局',
  '跳转到TabBar布局',
  '跳转到自定义TabBar布局',
  '跳转到Darwer布局',
  'FloatingActionButton示例',
  'FlatButton扁平按钮组件',
  'PopupMenuButton弹出菜单组件',
  'SimpleDialog简单对话框',
  'AlertDialog提示对话框组件',
  'IOS-CupertinoActivityIndicator组件',
  'IOS-CupertinoAlertDialog对话框组件',
  'IOS-CupertinoButton按钮组件',
  'IOS-Cupertino组件集合',
  'GridViewWidget',
  'TableWidget',
  'TransformWidget',
];

var globalCurrentPage = 0;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    LogUtil.init(isDebug: true, tag: TAG);

    Map<String, WidgetBuilder> map = new Map<String, WidgetBuilder>();
    for (var i = 0; i < pages.length; i++) {
      map[pages.elementAt(i)] = (BuildContext context) => ContainerView(i);
    }

    var size = map.length;
    LogUtil.v('页面数：$size');
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new HomePage(),
      title: TITLE,
      routes: map,
      initialRoute: TITLE,
    );
  }
}

//-----------------------------------------首页-----------------------------------------
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> list = new List<Widget>();
    for (var i = 0; i < pages.length; i++) {
      list.add(new RaisedButton(
        onPressed: () {
          String msg = pages.elementAt(i);
          LogUtil.v('点击了：$msg');
          Navigator.pushNamed(context, pages.elementAt(i));
        },
        child: new Text(
          titles[i],
          style: TextStyle(fontSize: 18.0),
        ),
      ));
    }

    return new Scaffold(
      appBar: new AppBar(
        title: Text(TITLE),
        centerTitle: true,
      ),
      body: new ListView(
        children: list,
      ),
    );
  }
}

class ContainerView extends StatefulWidget {
  ContainerView(currentPage) {
    globalCurrentPage = currentPage;
  }

  @override
  State<StatefulWidget> createState() {
    return _ContainerViewState();
  }
}

class _ContainerViewState extends State<ContainerView> {
  @override
  Widget build(BuildContext context) {
    LogUtil.v('当前位置：$globalCurrentPage', tag: TAG);
    switch (globalCurrentPage) {
      case 0:
        {
          return new LoginPage();
        }
      case 1:
        {
          return new LoginResult(titles.elementAt(globalCurrentPage));
        }
      case 2:
        {
          return new ScaffoldWidget(titles.elementAt(globalCurrentPage));
        }
      case 3:
        {
          return new AppBarLayoutWidget(titles.elementAt(globalCurrentPage));
        }
      case 4:
        {
          return new BottomNavigationBarWidget(
              titles.elementAt(globalCurrentPage));
        }
      case 5:
        {
          return new TabBarWidget(titles.elementAt(globalCurrentPage));
        }
      case 6:
        {
          return new CustomTabBarWidget(titles.elementAt(globalCurrentPage));
        }
      case 7:
        {
          return new DrawerWidget(titles.elementAt(globalCurrentPage));
        }
      case 8:
        {
          return new FloatingActionButtonWidget(
              titles.elementAt(globalCurrentPage));
        }
      case 9:
        {
          return new FlatButtonWidget(titles.elementAt(globalCurrentPage));
        }
      case 10:
        {
          return new PopupMenuButtonWidget(titles.elementAt(globalCurrentPage));
        }
      case 11:
        {
          return new SimpleDialogWidget(titles.elementAt(globalCurrentPage));
        }
      case 12:
        {
          return new AlertDialogWidget(titles.elementAt(globalCurrentPage));
        }
      case 13:
        {
          return new CupertinoActivityIndicatorWidget(
              titles.elementAt(globalCurrentPage));
        }
      case 14:
        {
          return new CupertinoAlertDialogWidget(
              titles.elementAt(globalCurrentPage));
        }
      case 15:
        {
          return new CupertinoButtonWidget(titles.elementAt(globalCurrentPage));
        }
      case 16:
        {
          return new CupertinosWidget(titles.elementAt(globalCurrentPage));
        }
      case 17:
        {
          return new GridViewWidget(titles.elementAt(globalCurrentPage));
        }
      case 18:
        {
          return new TableWidget(titles.elementAt(globalCurrentPage));
        }
      case 19:
        {
          return new TransformWidget(titles.elementAt(globalCurrentPage));
        }
      default:
        break;
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
          ],
        ),
      ),
    );
  }
}

//-----------------------------------------登录结果页-----------------------------------------
class LoginResult extends StatelessWidget {
  final String title;

  LoginResult(this.title);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
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
