import 'package:flutter/material.dart';

void main() => runApp(new AppWidget());

var title = '路由Route';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: new ProductsList(),
      ),
    );
  }
}

class Products {
  final String title;
  final String description;

  Products(this.title, this.description);
}

class ProductsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Products> products = new List.generate(
      20,
      (index) => new Products('商品 ${index + 1}', '这是第${index + 1}条数据'),
    );

    return new Container(
      child: new ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return new ListTile(
            title: new Text(products[index].title),
            subtitle: new Text(products[index].description),
            onTap: () {
              _navigateToSecondPage(context,
                  products[index].title + '\n' + products[index].description);
            },
          );
        },
      ),
    );
  }

  //返回数据
  _navigateToSecondPage(BuildContext context,var params) async {
    final result = await Navigator.push(
      context,
      new MaterialPageRoute(builder: (context) => new ProductsDetail(params)),
    );
    Scaffold.of(context).showSnackBar(
      new SnackBar(
        content: new Text(
          ('$result'),
        ),
      ),
    );
  }
}

class ProductsDetail extends StatelessWidget {
  final String msg;

  ProductsDetail(this.msg);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new RaisedButton(
          child: new Text(
            msg,
            softWrap: true,
            style: new TextStyle(color: Colors.red, fontSize: 20.0),
          ),
          onPressed: () {
            Navigator.pop(context, '我是返回来的数据!!!');
          },
        ),
      ),
    );
  }
}
