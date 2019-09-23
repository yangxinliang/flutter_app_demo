import 'package:flutter/material.dart';

class DartDemoTest extends StatefulWidget {
  final String title;

  const DartDemoTest({this.title});

  @override
  _DartDemoTestState createState() => _DartDemoTestState();
}

class _DartDemoTestState extends State<DartDemoTest> {
  // 明确声明

  String name = "yangxinlang";
  int age = 20;
  double height = 1.88;

  var demo = List();

  List<int> demos = List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    demos.add(1);
  }

  @override
  Widget build(BuildContext context) {
//    Map args = ModalRoute.of(context).settings.arguments;

//    print(args);

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView()
//        ListView.separated(
//          itemCount: _widgetList.length,
//          itemBuilder: (BuildContext context, int index) {
//            return ListTile(
//              title: Text(_widgetList[index]),
//              onTap: () {
//                print("$index");
//              },
//            );
//          },
//
//          //分割器构造器
//          separatorBuilder: (BuildContext context, int index) {
//            return Divider(
//              color: Colors.blue,
//            );
//          },
//        )

        );
  }
}

// 定义一个完整的函数
int sum(int num1, int num2) {
  return num1 + num2;
}

// 可选参数函数示例
void test(String name, {int age, double height}) {
  print('name=$name age=$age height=$height');
}

//自定义一个类 类通常有两部分组成： 成员（member）和方法（method）
class Person {
  // 成员变量
  String name;

  // 属性的getter 方法
  int get age {
    return 20;
  }

  // 属性的setetr 方法
  set age(value) {
    print(value);
  }

  // 类成员变量
  static String demo;

  // 构造方法
//   Person(String  name) {
//     this.name = name;
//   }
  // Dart 为了简化构造方法也可以写成
  Person(this.name);

  // 实例方法
  void eat() {
    print("吃东西");
  }

  // 类方法
  static test() {
    print("test");
  }
}

// 抽象类
abstract class Shape {
  // 声明一个方法
  getArea();
}

class Circle extends Shape {
  double r;

  Circle(this.r);
  // 实现抽象类的方法
  @override
  getArea() {
    return r * r * 3.14;
  }
}
class Reactangle extends Shape {
  double w;
  double h;

  Reactangle(this.w, this.h);

  // 实现抽象类的方法
  @override
  getArea() {
    return w * h;
  }
}


// mixin 的使用
mixin Runner {

  run(){
    print("在奔跑");
  }
}
// mixin 的使用

mixin Flyer {

  fly(){
    print("在奔跑");
  }
}

// 此时 demo 同时有 run 和 fly 方法
class Demo with Runner,Flyer {

}

// 使用 enum 来定义一个枚举
enum _Colors {
  red,
  green,
  blue

}


//TabBar({
//   Key key,
//   @required this.tabs, //显示的标签内容，一般使用Tab对象,也可以是其他的Widget
//   this.controller,//TabController对象
//   this.isScrollable = false,//是否可滚动
//   this.indicatorColor,//指示器颜色
//   this.indicatorWeight = 2.0,//指示器高度
//   this.indicatorPadding = EdgeInsets.zero,//底部指示器的Padding
//   this.indicator,//指示器decoration，例如边框等
//   this.indicatorSize,//指示器大小计算方式，TabBarIndicatorSize.label跟文字等宽,TabBarIndicatorSize.tab跟每个tab等宽
//   this.labelColor,//选中label颜色
//   this.labelStyle,//选中label的Style
//   this.labelPadding,//每个label的padding值
//   this.unselectedLabelColor,//未选中label颜色
//   this.unselectedLabelStyle,//未选中label的Style
//   this.onTap,//点击的回调函数
//})



//ListView({
//    Key key,
//    Axis scrollDirection = Axis.vertical,//滚动方向
//    bool reverse = false, //是否按照阅读方向相反的方向滑动
//    ScrollController controller,// ScrollController
//    bool primary,//指是否使用widget树中默认的PrimaryScrollController,当controller没有指定时使用，默认是 true.
//    ScrollPhysics physics,// iOS的下弹效果，安卓的下微光效果
//    bool shrinkWrap = false,//该属性表示是否根据子组件的总长度来设置ListView的长度，默认值为false
//    EdgeInsetsGeometry padding,//内容编剧
//    this.itemExtent,// children的个数
//    bool addAutomaticKeepAlives = true,//KeepAliveNotification来保存其状态
//    bool addRepaintBoundaries = true,//该属性表示是否将列表项（子组件）包裹在RepaintBoundary组件中。
//     // 当可滚动组件滚动时，将列表项包裹在RepaintBoundary中可以避免列表项重绘
//    List<Widget> children = const <Widget>[], //组件
//
//})





