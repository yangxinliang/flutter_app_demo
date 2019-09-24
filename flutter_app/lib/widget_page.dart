import 'package:flutter/material.dart';

import 'basic_components_page.dart';

class DemoWidget extends StatefulWidget {
  @override
  _DemoWidgetState createState() => _DemoWidgetState();
}

class _DemoWidgetState extends State<DemoWidget> {

  //定义一个装有widget的类名的数组
  List _widgetList = ["基础组件", "布局类组件", "容器类组件", "可滚动组件", "功能性"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("组件的分类"),
      ),
      body:  ListView.separated(
        itemCount: _widgetList.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(_widgetList[index]),
            onTap: () {
              print("$index");

               if (index == 0) {
                 Navigator.of(context).push(MaterialPageRoute(
                     builder: (context) => BasicWidget(
                       title: _widgetList[index],
                     )));

               }


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
