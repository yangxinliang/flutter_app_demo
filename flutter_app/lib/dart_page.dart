import 'package:flutter/material.dart';

class DemoDart extends StatefulWidget {
  final String title;

  const DemoDart({Key key, this.title}) : super(key: key);

  @override
  _DemoDartState createState() => _DemoDartState();
}

class _DemoDartState extends State<DemoDart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text("Dart基本知识"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("测试界面"),
            Text("测试界面"),
          ],
        ));
  }
}
