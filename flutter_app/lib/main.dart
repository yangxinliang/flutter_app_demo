import 'package:flutter/material.dart';

import 'package:flutter_app/PageRoute.dart';
import 'package:flutter_plugin_test/flutter_plugin_test.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Fiist Flutter Demo ",
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      // 注册路由表
      routes: {
        "new_page": (context) => NewRoute(),
      },
      home: new MyHomePage(title: "wowowoowowowowo"),
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
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'You have pushed the button this many times:',
            ),

            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
//             new Text(
//               "我是第三个text",
//             ),
//
            FlatButton(
              child: Text("打开一个新页面"),
              textColor: Colors.blue,
//               onPressed: (){
//
//                 Navigator.push(context,
//
//                 new MaterialPageRoute(builder: (context)){
//
//                         return new  NewRoute();
//
//                     }
//
//                 ) },
              onPressed: () {

                FlutterPluginTest.testName("我是杨新亮");


//                 Navigator.pushNamed(context, "new_page");
//                Navigator.of(context)
//                    .pushNamed("new_page", arguments: "我是第二个页面");

//                 Navigator.push(context,
//
//                   new MaterialPageRoute(builder: (context) {
//
//                     return new NewRoute();
//
//                   }
//
//                   )
//
//
//                 );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: "Increment",
//          child: new Icon(Incons.add),
      ),
    );
  }
}
