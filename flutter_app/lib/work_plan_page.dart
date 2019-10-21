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
          title: Text("工作计划",
               style: TextStyle(
                 color: Color(0xFF282828),
                 fontSize: 18,
                 fontWeight: FontWeight.w500

               ),
          ),
        ),
        body: ListView.builder(
            itemCount: 5, // 加载的子组件的个数
//          itemExtent: 50.0, //强制高度为50.0
            //它是列表项的构建器，类型为IndexedWidgetBuilder，返回值为一个widget。
            // 当列表滚动到具体的index位置时，会调用该构建器构建列表项。
            itemBuilder: (BuildContext context, int index) {
              return _configWidget();
            }));
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
}
