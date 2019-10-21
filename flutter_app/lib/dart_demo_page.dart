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

  // 类型推断声明变量
  var demo = List();

  List<int> demos = List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    demos.add(1);

    // 级联操作
//    Person p = Person()..name = "dada"..sex = "男";

    /**对枚举的一些操作**/
    // 获取枚举中的具体值
    var currentSeason = Season.spring;
    // 获取spring 在枚举中的位置
    var index = Season.spring.index;

    // values 包含每个枚举值的List
    var seaSon = Season.values;
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

// 位置可选参数示例
void testMethod(String name, [int age = 18, double height = 170.0]) {}

// 定义一个函数
foo(String name) {
  print(name);
}

demoFun(Function func) {}

//自定义一个类 类通常有两部分组成： 成员（member）和方法（method）
class Person {
  // 赋值一个函数
//  var testMethod = foo;

  // 成员变量
  String name;

  String sex;

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

  //在一个构造函数中，去调用另外一个构造函数（注意：是在冒号后面使用this调用）
  Person.fromName(String name) : this(name);

  // 实例方法
  void eat() {
    print("吃东西");
//    testMethod("dasadas");
    // 函数可以当参数
//    demoFun(foo("dasda"));
  }

  // 类方法
  static test() {
    print("test");
  }
}

// 几种不同的构造方法
class DemoInitMethod {
  String demo;
  // 普通构造方法
  DemoInitMethod(this.demo);

  // 命名构造方法 因为不支持方法（函数）的重载，没办法创建相同的名称构造方法，所以我们经常使用自己命名方法去构造方法
  DemoInitMethod.demo(String name) {
    this.demo = name;
  }

  // 重定向构造方法
  // 我们希望在一个构造方法中去调用另外一个构造方法, 这个时候可以使用重定向构造方法：
  //在一个构造函数中，去调用另外一个构造函数（注意：是在冒号后面使用this调用）
  DemoInitMethod.fromName(String name) : this(name);
}

// 常量构造方法 如果将构造方法前加const进行修饰，那么可以保证同一个参数，创建出来的对象是相同的
//这样的构造方法就称之为常量构造方法。
// 注意一：拥有常量构造方法的类中，所有的成员变量必须是final修饰的.
// 注意二: 为了可以通过常量构造方法，创建出相同的对象，不再使用 new关键字，而是使用const关键字

class DemoConstMethod {
  final String name;
  // 常量构造方法
  const DemoConstMethod(this.name);
}

// 抽象类
abstract class Shape {
  // 声明一个方法
  getArea();

  // 如果该方法已经被实现了 子类不需要重写
  demo() {
    print("dasdas");
  }
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
  run() {
    print("在奔跑");
  }
}
// mixin 的使用

mixin Flyer {
  fly() {
    print("在奔跑");
  }
}

// implements的方式要求必须对其中的方法进行重新实现
// class SuperMan implements Runner, Flyer {}

// 此时 demo 同时有 run 和 fly 方法
class Demo with Runner, Flyer {}

// 使用 enum 来定义一个枚举
enum Season { spring, summer, autumn, winter }
