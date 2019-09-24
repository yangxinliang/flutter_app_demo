import 'package:flutter/material.dart';

class ContainerWidget extends StatefulWidget {
  @override
  _ContainerWidgetState createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("容器类组件"),
      ),
      body: Container(
          color: Colors.lightGreen,
          margin: EdgeInsets.only(left: 20, top: 50),
//        height: 40,
//        width: 200,
//        height: 20,

          child: _configContainer()),
    );
  }

  //Padding可以给其子节点添加填充（留白），和边距效果类似。我们在前面很多示例中都已经使用过它了
  Widget _configPadding() {
    return Padding(
      // 控制子组件到父组件 上下左右的位置的
      // EdgeInsets 提供了四个便捷的方法
      //fromLTRB(double left, double top, double right, double bottom)：分别指定四个方向的填充。
      //all(double value) : 所有方向均使用相同数值的填充。
      //only({left, top, right ,bottom })：可以设置具体某个方向的填充(可以同时指定多个方向)。
      //symmetric({ vertical, horizontal })：用于设置对称方向的填充，vertical指top和bottom，horizontal指left和right。
//      padding: EdgeInsets.all(20), // 设置上下左右间距都是 20
      padding: EdgeInsets.only(left: 20, top: 20), // 设置 左  上 间距是20
      child: Container(
        color: Colors.red,
        height: 50,
        width: 50,
      ),
    );
  }

  // ConstrainedBox用于对子组件添加额外的约束。
  Widget _configSizedBox() {
    return Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            // SizedBox用于给子元素指定固定的宽高，
            SizedBox(
              width: 100,
              height: 100,
              child: DecoratedBox(
                //BoxDecoration({
                //  Color color, //颜色
                //  DecorationImage image,//图片
                //  BoxBorder border, //边框
                //  BorderRadiusGeometry borderRadius, //圆角
                //  List<BoxShadow> boxShadow, //阴影,可以指定多个
                //  Gradient gradient, //渐变
                //  BlendMode backgroundBlendMode, //背景混合模式
                //  BoxShape shape = BoxShape.rectangle, //形状
                //})
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                child: Text("测试SizedBox"),
              ),
            ),
            // 这个组件是 BoxConstraints 来设置组件的最大高度 和宽度
            ConstrainedBox(
              //const BoxConstraints({
              //  this.minWidth = 0.0, //最小宽度
              //  this.maxWidth = double.infinity, //最大宽度
              //  this.minHeight = 0.0, //最小高度
              //  this.maxHeight = double.infinity //最大高度
              //})
              constraints: BoxConstraints(maxHeight: 50),

              child: SizedBox(
                height: 80,
                child: Text("ConstrainedBox"),
              ),
            ),

            // 装饰容器DecoratedBox
            DecoratedBox(
                // 对组件进行装饰  设置边框 圆角 阴影等
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.red, Colors.orange[700]]), //背景渐变
                    borderRadius: BorderRadius.circular(3.0), //3像素圆角
                    boxShadow: [
                      //阴影
                      BoxShadow(
                          color: Colors.black54,
                          offset: Offset(2.0, 2.0),
                          blurRadius: 4.0)
                    ]),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 80.0, vertical: 18.0),
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                ))
          ],
        ));
  }

  //Transform可以在其子组件绘制时对其应用一些矩阵变换来实现一些特效。Matrix4是一个4D矩阵，通过它我们可以实现各种矩阵操作
  Widget _configTransform() {
    return Container(
      color: Colors.black,
      child: new Transform(
        alignment: Alignment.topRight, //相对于坐标系原点的对齐方式
        transform: new Matrix4.skewY(0.3), //沿Y轴倾斜0.3弧度
        child: new Container(
          padding: const EdgeInsets.all(8.0),
          color: Colors.deepOrange,
          child: const Text('我可以做很多酷的事'),
        ),
      ),
    );
  }

//  // Container是一个组合类容器
//  // 它是DecoratedBox、ConstrainedBox、Transform、Padding、Align等组件组合的一个多功能容器，
//  // 所以我们只需通过一个Container组件可以实现同时需要装饰、变换、限制的场景
  Widget _configContainer() {

    return Column(
      children: <Widget>[

        //
//    Container({
//    this.alignment, // 子组件的对齐方式
//    this.padding, //容器内补白，属于decoration的装饰范围
//    Color color, // 背景色
//    Decoration decoration, // 背景装饰
//    Decoration foregroundDecoration, //前景装饰
//    double width,//容器的宽度
//    double height, //容器的高度
//    BoxConstraints constraints, //容器大小的限制条件
//    this.margin,//容器外补白，不属于decoration的装饰范围
//    this.transform, //变换
//    this.child,
//    })
        Container(
          margin: EdgeInsets.only(top: 20.0, left: 20.0), //容器外填充
          constraints:
              BoxConstraints.tightFor(width: 200.0, height: 150.0), //卡片大小
          decoration: BoxDecoration(
               color: Colors.yellow,
              //背景装饰
              gradient: RadialGradient(
                  //背景径向渐变
                  colors: [Colors.red, Colors.orange],
                  center: Alignment.topLeft,
                  radius: .98),
              boxShadow: [
                //卡片阴影
                BoxShadow(
                    color: Colors.black54,
                    offset: Offset(2.0, 2.0),
                    blurRadius: 4.0)
              ]),
          transform: Matrix4.rotationZ(.2), //卡片倾斜变换
          alignment: Alignment.center, //卡片内文字居中
          child: Text(
            //卡片文字
            "9.25", style: TextStyle(color: Colors.white, fontSize: 40.0),
          ),
        ),

        // margin 是指容器外的距离
        Container(
          margin: EdgeInsets.all(100.0), //容器外补白
          color: Colors.orange,
          child: Text("Hello world!"),
        ),
        //padding 是指容器内的距离
        Container(
          padding: EdgeInsets.all(20.0), //容器内补白
          color: Colors.orange,
          child: Text("Hello world!"),
        ),





      ],
    );
  }
}
