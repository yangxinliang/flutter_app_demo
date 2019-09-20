import 'package:flutter/material.dart';

class DemoWidget extends StatefulWidget {
  @override
  _DemoWidgetState createState() => _DemoWidgetState();
}

class _DemoWidgetState extends State<DemoWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("组件的分类"),
      ),

      body: Column(

        children: <Widget>[

          Text("widget的分类"),


        ],

      ),

    );
  }
}
