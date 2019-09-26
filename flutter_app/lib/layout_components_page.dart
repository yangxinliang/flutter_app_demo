import 'package:flutter/material.dart';

class LayoutWidget extends StatefulWidget {
  @override
  _LayoutWidgetState createState() => _LayoutWidgetState();
}

class _LayoutWidgetState extends State<LayoutWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("布局类组件"),
      ),
      body: Container(
          color: Colors.lightGreen,
          margin: EdgeInsets.only(left: 20, top: 50),
//        height: 40,
//        width: 200,
//        height: 20,

          child: _configStackAndPositoned()),
    );
  }

  // 对于线性布局（Row 和 Column） 对于线性布局，有主轴和纵轴之分，如果布局是沿水平方向，那么主轴就是指水平方向，而纵轴即垂直方向；
  // 如果布局沿垂直方向，那么主轴就是指垂直方向，而纵轴就是水平方向。在线性布局中，
  // 有两个定义对齐方式的枚举类MainAxisAlignment和CrossAxisAlignment，分别代表主轴对齐和纵轴对齐

  Widget _configRow() {
    return Row(
      //表示水平方向子组件的布局顺序(是从左往右还是从右往左)，
      // 默认为系统当前Locale环境的文本方向(如中文、英语都是从左往右，而阿拉伯语是从右往左)。
      textDirection: TextDirection.ltr,
      //表示Row在主轴(水平)方向占用的空间，默认是MainAxisSize.max，表示尽可能多的占用水平方向的空间，
      // 此时无论子widgets实际占用多少水平空间，Row的宽度始终等于水平方向的最大宽度
      mainAxisSize: MainAxisSize.max,
      //表示子组件在Row所占用的水平空间内对齐方式
      //  主轴方向上的对齐方式，会对child的位置起作用，默认是start。
      // start：将children放置在主轴的起
      // center：将children放置在主轴的中心；
      // end：将children放置在主轴的末尾；
      //spaceAround：将主轴方向上的空白区域均分，使得children之间的空白区域相等，但是首尾child的空白区域为1/2
      //spaceBetween：将主轴方向上的空白区域均分，使得children之间的空白区域相等，首尾child都靠近首尾，没有间隙；
      // spaceEvenly：将主轴方向上的空白区域均分，使得children之间的空白区域相等，包括首尾child；
      // 其中spaceAround、spaceBetween以及spaceEvenly的区别，就是对待首尾child的方式。其距离首尾的距离分别是空白区域的1/2、0、1。
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      // 表示Row纵轴（垂直）的对齐方向，默认是VerticalDirection.down，表示从上到下。
      verticalDirection: VerticalDirection.down,
      // 表示子组件在纵轴方向的对齐方式，Row的高度等于子组件中最高的子元素高度，它的取值和MainAxisAlignment一样(包含start、end、 center三个值)，
      // 不同的是crossAxisAlignment的参考系是verticalDirection，即verticalDirection值为VerticalDirection.down时crossAxisAlignment.start指顶部对齐，
      // verticalDirection值为VerticalDirection.up时，crossAxisAlignment.start指底部对齐；而crossAxisAlignment.end和crossAxisAlignment.start正好相反
      crossAxisAlignment: CrossAxisAlignment.start,
      // 子组件
      children: <Widget>[
        Text("Row1"),
        Text("Row2"),
      ],
    );
  }

  // 线性布局 包含水平或者垂直方向的布局
  Widget _configColumn() {
    return Column(
      //表示水平方向子组件的布局顺序(是从左往右还是从右往左)，
      // 默认为系统当前Locale环境的文本方向(如中文、英语都是从左往右，而阿拉伯语是从右往左)。
      textDirection: TextDirection.ltr,
      //表示Row在主轴(水平)方向占用的空间，默认是MainAxisSize.max，表示尽可能多的占用水平方向的空间，
      // 此时无论子widgets实际占用多少水平空间，Row的宽度始终等于水平方向的最大宽度
      mainAxisSize: MainAxisSize.max,
      //表示子组件在Row所占用的水平空间内对齐方式
      //  主轴方向上的对齐方式，会对child的位置起作用，默认是start。
      // start：将children放置在主轴的起
      // center：将children放置在主轴的中心；
      // end：将children放置在主轴的末尾；
      //spaceAround：将主轴方向上的空白区域均分，使得children之间的空白区域相等，但是首尾child的空白区域为1/2
      //spaceBetween：将主轴方向上的空白区域均分，使得children之间的空白区域相等，首尾child都靠近首尾，没有间隙；
      // spaceEvenly：将主轴方向上的空白区域均分，使得children之间的空白区域相等，包括首尾child；
      // 其中spaceAround、spaceBetween以及spaceEvenly的区别，就是对待首尾child的方式。其距离首尾的距离分别是空白区域的1/2、0、1。
      mainAxisAlignment: MainAxisAlignment.start,
      // 表示Row纵轴（垂直）的对齐方向，默认是VerticalDirection.down，表示从上到下。
      verticalDirection: VerticalDirection.down,
      // 表示子组件在纵轴方向的对齐方式，Row的高度等于子组件中最高的子元素高度，它的取值和MainAxisAlignment一样(包含start、end、 center三个值)，
      // 不同的是crossAxisAlignment的参考系是verticalDirection，即verticalDirection值为VerticalDirection.down时crossAxisAlignment.start指顶部对齐，
      // verticalDirection值为VerticalDirection.up时，crossAxisAlignment.start指底部对齐；而crossAxisAlignment.end和crossAxisAlignment.start正好相反
      crossAxisAlignment: CrossAxisAlignment.start,
      // 子组件
      children: <Widget>[
        Text("Row1"),
        Text("Row2"),
      ],
    );
  }

  // 弹性布局 Expanded 这个组件必须和 Row 和Column 结合使用  可以按比例“扩伸” Row、Column和Flex子组件所占用的空间。
  // 这个组件配合  Row 和Column  使用可以使  Row 和Column 内子组件更好的按着位置去布局
  Widget _configExpanded() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            color: Colors.red,
            child: Text("Row1"),
          ),
        ),
       Text("Row1"),

        Text("Row2"),
      ],
    );
  }

  // 流式布局
  Widget _configWrapAndFlow() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Wrap(
          // 主轴（水平）方向的间距
          spacing: 8.0,
          // 纵轴（垂直）方向间距
          runSpacing: 4.0,
          //沿主轴方向居中
          alignment: WrapAlignment.start,
          // direction、crossAxisAlignment、textDirection、verticalDirection 这些属性和 Row和Colunm组件的参数意义是相同的，

          children: <Widget>[
            Chip(
              avatar:
                  CircleAvatar(backgroundColor: Colors.blue, child: Text('A')),
              label: Text('Chip测试1'),
            ),
            Chip(
              avatar:
                  CircleAvatar(backgroundColor: Colors.blue, child: Text('M')),
              label: Text('Chip测试2'),
            ),
            Chip(
              avatar:
                  CircleAvatar(backgroundColor: Colors.blue, child: Text('H')),
              label: Text('Chip测试3'),
            ),
            Chip(
              avatar:
                  CircleAvatar(backgroundColor: Colors.blue, child: Text('J')),
              label: Text('Chip测试4'),
            ),
          ],
        ),

        //我们一般很少会使用Flow，因为其过于复杂，需要自己实现子widget的位置转换，
        // 在很多场景下首先要考虑的是Wrap是否满足需求。
        // Flow主要用于一些需要自定义布局策略或性能要求较高(如动画中)的场景
        Flow(
          // 由于我们需要自己实现FlowDelegate的paintChildren()方法，所以我们需要自己计算每一个组件的位置
          delegate: TestFlowDelegate(margin: EdgeInsets.all(10.0)),
          children: <Widget>[
            Container(
              width: 80.0,
              height: 80.0,
              color: Colors.red,
            ),
            Container(
              width: 80.0,
              height: 80.0,
              color: Colors.green,
            ),
            Container(
              width: 80.0,
              height: 80.0,
              color: Colors.blue,
            ),
            Container(
              width: 80.0,
              height: 80.0,
              color: Colors.yellow,
            ),
            Container(
              width: 80.0,
              height: 80.0,
              color: Colors.brown,
            ),
            Container(
              width: 80.0,
              height: 80.0,
              color: Colors.purple,
            ),
          ],
        )
      ],
    );
  }

  // 层叠布局 Stack  Positioned
  Widget _configStackAndPositoned() {
    return Container(
      height: 100,
      width: 200,
      child: Stack(
        //此参数决定如何去对齐没有定位（没有使用Positioned）或部分定位的子组件。
//         alignment: AlignmentDirectional.topEnd,
        // 和Row、Wrap的textDirection功能一样，都用于确定alignment对齐的参考系
        textDirection: TextDirection.ltr,
        // 此参数用于确定没有定位的子组件如何去适应Stack的大小。StackFit.loose表示使用子组件的大小，
        // StackFit.expand表示扩伸到Stack的大小。
        fit: StackFit.loose,
        // 此属性决定如何显示超出Stack显示空间的子组件；值为Overflow.clip时，超出部分会被剪裁（隐藏），值为Overflow.visible 时则不会。
        overflow: Overflow.visible,

        children: <Widget>[
          // 确定子组件 在stack 中的位置 left
          //left、top 、right、 bottom分别代表离Stack左、上、右、底四边的距离。width和height用于指定需要定位元素的宽度和高度。
          Positioned(left: 20,top: 20, child: Text("测试 stack"))
        ],
      ),
    );
  }
}

// 实现 Flow组件 delegate
class TestFlowDelegate extends FlowDelegate {
  EdgeInsets margin = EdgeInsets.zero;
  TestFlowDelegate({this.margin});
  @override
  void paintChildren(FlowPaintingContext context) {
    var x = margin.left;
    var y = margin.top;
    //计算每一个子widget的位置
    for (int i = 0; i < context.childCount; i++) {
      var w = context.getChildSize(i).width + x + margin.right;
      if (w < context.size.width) {
        context.paintChild(i,
            transform: new Matrix4.translationValues(x, y, 0.0));
        x = w + margin.left;
      } else {
        x = margin.left;
        y += context.getChildSize(i).height + margin.top + margin.bottom;
        //绘制子widget(有优化)
        context.paintChild(i,
            transform: new Matrix4.translationValues(x, y, 0.0));
        x += context.getChildSize(i).width + margin.left + margin.right;
      }
    }
  }

  @override
  getSize(BoxConstraints constraints) {
    //指定Flow的大小
    return Size(double.infinity, 200.0);
  }

  @override
  bool shouldRepaint(FlowDelegate oldDelegate) {
    return oldDelegate != this;
  }
}
