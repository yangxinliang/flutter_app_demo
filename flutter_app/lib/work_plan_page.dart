import 'package:flutter/material.dart';

class STWorkPlanPage extends StatefulWidget {
  @override
  _STWorkPlanPageState createState() => _STWorkPlanPageState();
}

class _STWorkPlanPageState extends State<STWorkPlanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "折线demo",
            style: TextStyle(
                color: Color(0xFF282828),
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
        ),
        body: _configDemoWidget()

//        ListView.builder(
//            itemCount: 5, // 加载的子组件的个数
////          itemExtent: 50.0, //强制高度为50.0
//            //它是列表项的构建器，类型为IndexedWidgetBuilder，返回值为一个widget。
//            // 当列表滚动到具体的index位置时，会调用该构建器构建列表项。
//            itemBuilder: (BuildContext context, int index) {
//              return _configWidget();
//            })

        );
  }

  /*
  * 配置widget
  * */
  Widget _configWidget() {
    return Container(
      color: Color(0xFFF9F9F9),
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10, top: 10),
        decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            borderRadius: BorderRadius.circular(3),
            boxShadow: [
              //卡片阴影
              BoxShadow(
                  color: Color(0x0D000000),
                  offset: Offset(2.0, 2.0),
                  blurRadius: 6.0)
            ]),
        child: Column(
          children: <Widget>[
            // 工作室或者俱乐部的名称
            Container(
              margin: EdgeInsets.only(left: 15, top: 15),
              child: Row(
                children: <Widget>[
                  Text(
                    "莱因克尔健身会所  ",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF282828)),
                  ),
                  Text("图片")
                ],
              ),
            ),
            Container(
              color: Color(0xFFF1F1F1),
              margin: EdgeInsets.only(left: 30, right: 30, top: 12),
              height: 1,
            ),

            Container(
              margin: EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "ID：",
                                  style: TextStyle(
                                      color: Color(0xFF282828), fontSize: 12),
                                ),
                                Text(
                                  "10998779",
                                  style: TextStyle(
                                      color: Color(0xFF666666), fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "创建人：",
                                  style: TextStyle(
                                      color: Color(0xFF282828), fontSize: 12),
                                ),
                                Text(
                                  "张三",
                                  style: TextStyle(
                                      color: Color(0xFF666666), fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "城市：",
                                  style: TextStyle(
                                      color: Color(0xFF282828), fontSize: 12),
                                ),
                                Text(
                                  "上海市-徐汇",
                                  style: TextStyle(
                                      color: Color(0xFF666666), fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "提醒时间：",
                                  style: TextStyle(
                                      color: Color(0xFF282828), fontSize: 12),
                                ),
                                Text(
                                  "2019-03-11 20:38",
                                  style: TextStyle(
                                      color: Color(0xFF666666), fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 15, top: 10, right: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "跟进内容：",
                    style: TextStyle(color: Color(0xFF282828), fontSize: 12),
                  ),
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.only(bottom: 16),
                    child: Text(
                      "让所有业务员建立客户案目的筛选本月可以拜访的效果（不超过500个字）让所有业务员建立客户案目的筛选本月可以拜访的效果（不超过500个字）我是的不值达到大大萨达大啊大大所大多 大三大四大所大所大所大所大大三大四大所大所大奥所大所多大萨达所多啥大所多啥大所多大萨达啥大所多啥多卧室的",
                      style: TextStyle(color: Color(0xFF666666), fontSize: 12),
                    ),
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _configDemoWidget() {
    return Container();
  }
}

/// 基本painter
class BasePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

  // 计算出极值 最大值， 最小值
  List<double> calculateMaxMin(List<ChartBean> chatBeans) {
    if (chatBeans == null || chatBeans.length == 0) return [0, 0];

    double max = 0.0, min = 0.0;
    for (ChartBean bean in chatBeans) {
      if (max < bean.y) {
        max = bean.y;
      }
      if (min > bean.y) {
        min = bean.y;
      }
    }
    return [max, min];
  }
}

// 数据模型
class ChartBean {
  String x;
  double y;
  int millisSeconds;
  Color color;
  ChartBean(
      {@required this.x, @required this.y, this.millisSeconds, this.color});
}
/// 绘制折线或者曲线
class ChartLinePainter extends BasePainter {
  double value; //当前动画值
  List<ChartBean> chartBeans; // 数据模型
  List<Color> shaderColors; // 渐变色
  Color lineColor; // 曲线或者折线的颜色
  Color xyColor; // xy轴的颜色
  static const double basePadding = 16; // 默认的边距
  List<double> maxMin = [0.0]; // 存储极值
  bool isCurve; // 是否为曲线
  bool isShowYValue; // 是否显示y 轴数值
  bool isShowXy; // 是否显示坐标轴
  bool isShowXyRuler; // 是否显示xy刻度
  bool isShowHintX, isShowHintY; //x、y轴的辅助线
  bool isShowBorderTop, isShowBorderRight; //顶部和右侧的辅助线
  bool isShowPressedHintLine; //触摸时是否显示辅助线
  double pressedPointRadius; //触摸点半径
  double pressedHintLineWidth; //触摸辅助线宽度
  Color pressedHintLineColor; //触摸辅助线颜色
  int yNum; // y轴的值数量，默认为5个
  bool isShowFloat; // y轴的值是否显示小数
  double fontSize; //
  Color fontColor; //
  double lineWidth; // 线宽
  double rulerWidth; // 刻度的宽度或者高度
  double startX, endX, startY, endY;
  double _fixedHeight, _fixedWidth; //宽高
  Path path;
  Map<double, Offset> _point = Map(); // 装有触摸点的集合
  bool _isAnimationEnd = false;
  bool isCanTouch;

  Offset globalPosition; // 点的位置

  static const Color defaultColor = Colors.deepPurple; // 默认

  ChartLinePainter(
    this.chartBeans,
    this.lineColor, {
    this.lineWidth = 4,
    this.value = 1,
    this.isCurve = true,
    this.isShowXy = true,
    this.isShowYValue = true,
    this.isShowXyRuler = true,
    this.isShowHintX = false,
    this.isShowHintY = false,
    this.isShowBorderTop = false,
    this.isShowBorderRight = false,
    this.rulerWidth = 8,
    this.shaderColors,
    this.xyColor = defaultColor,
    this.yNum = 5,
    this.isShowFloat = false,
    this.fontSize = 10,
    this.fontColor = defaultColor,
    this.isCanTouch = false,
    this.globalPosition,
    this.isShowPressedHintLine = true,
    this.pressedPointRadius = 4,
    this.pressedHintLineWidth = 0.5,
    this.pressedHintLineColor = defaultColor,
  });


  @override
  bool shouldRebuildSemantics(ChartLinePainter oldDelegate) {
    // TODO: implement shouldRebuildSemantics
    _isAnimationEnd = oldDelegate.value == value;

    return oldDelegate.value !=  value || isCanTouch;
  }

  @override
  void paint(Canvas canvas, Size size) {
    // 初始化一些参数
    _init(size);
  }


  void _init(Size size) {

    initValue();


  }

  // 初始化一些默认配置
  void initValue() {
    if (lineColor == null) {
      lineColor = defaultColor;
    }
    if (xyColor == null) {
      xyColor = defaultColor;
    }
    if (fontColor == null) {
      fontColor = defaultColor;
    }
    if (fontSize == null) {
      fontSize = 10;
    }
    if (pressedHintLineColor == null) {
      pressedHintLineColor = defaultColor;
    }
    if (yNum == null) {
      yNum = 5;
    }
    if (isShowFloat == null) {
      isShowFloat = false;
    }
  }
  // 计算边界
  void initBorder(Size size) {

    startX = yNum > 0 ? basePadding * 2.5 : basePadding * 2; // 预留y轴刻度值所占的空间
    endX = size.width - basePadding * 2;
    startY = size.height - (isShowXyRuler ? basePadding * 3 : basePadding * 2);
    endY = basePadding * 2;

    _fixedHeight = startY - endY;
    _fixedWidth = endX - startX;
    maxMin  = calculateMaxMin(chartBeans);

  }

  // 计算path
  void initPath(Size size) {
    if (path == null) {

      if (chartBeans != null && chartBeans.length > 0 && maxMin[0] > 0) {
        path = Path();
        double preX, preY,currentX,currentY;

        int length = chartBeans.length > 7 ? 7 : chartBeans.length;
        double W = _fixedWidth / (length - 1); // 两个点之间的x方向距离

        for(int i = 0; i < length; i ++) {

          if (i == 0) {
            var key = startX;
            var value = (startY - chartBeans[i].y / maxMin[0] * _fixedHeight);
            path.moveTo(key, value);
            _point[key] = Offset(key,value);
            continue;
          }
          currentX = startX + W * i;
          preX = startX + W * (i - 1); // 上一个坐标点

          preY = (startY - chartBeans[i - 1].y / maxMin[0] * _fixedHeight);
          currentY = (startY - chartBeans[i].y / maxMin[0] * _fixedHeight);
          _point[currentX] = Offset(currentX, currentY);

          if(isCurve) {
             // 三次贝塞尔曲线 /// Adds a cubic bezier segment that curves from the current point
            //  (x1,y1)  (x2,y2) 第一个和第二个控制点  （x3,y3）为终点结束点
            path.cubicTo((preX + currentX) / 2, preY, (preX + currentX) / 2, currentY, currentX, currentY);

          } else {
            path.lineTo(currentX, currentY);
          }
        }
      }
    }
  }

  void _drawXy(Canvas canvas, Size size) {




  }





}
