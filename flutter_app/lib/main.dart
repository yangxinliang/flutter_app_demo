import 'package:flutter/material.dart';
import 'package:flutter_app/widget_page.dart';

import 'dart_demo_page.dart';
import 'dart_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      // 注册路由表
      routes: {
        "dart_page": (context) => DemoDart(),
        "widget_page": (context) => DemoWidget(),
//        "dart_demo_test": (context,{arguments}) => DartDemoTest(arguments)

      },
      home: new MyHomePage(title: "Flutter"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: new AppBar(
          title: new Text(widget.title),
        ),
        body: ListView(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "dart_page",);
              },
              behavior: HitTestBehavior.opaque,
              child: Container(
                alignment: Alignment.center,
                height: 60,
                child: Text("Dart基本知识"),
              ),
            ),


            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "widget_page",);

              },
              behavior: HitTestBehavior.opaque,
              child: Container(
                alignment: Alignment.center,
                height: 60,
                child: Text("常用Widget使用"),
              ),
            ),

          ],
        ));
  }
}


