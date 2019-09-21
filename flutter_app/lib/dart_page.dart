import 'package:flutter/material.dart';

class DemoDart extends StatefulWidget {
  final String title;

  const DemoDart({Key key, this.title}) : super(key: key);

  @override
  _DemoDartState createState() => _DemoDartState();
}

class _DemoDartState extends State<DemoDart> {
  List _dartList = ["定义变量", "基本的数据类型", "函数的使用", "类和对象", "抽象类", "枚举类型", "异步处理"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text("Dart基本知识"),
        ),
        body: ListView.separated(
          itemCount: _dartList.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(_dartList[index]),
              onTap: () {
                print("$index");
              },
            );
          },
          //分割器构造器
          separatorBuilder: (BuildContext context, int index) {
            return Divider(
              color: Colors.blue,
            );
          },
        )

    );
  }
}
