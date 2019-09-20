import 'package:flutter/material.dart';
/*
* 自定义弹出视图
*
* */

// 定义回调函数
typedef buttonCallback = Function(int index);

// ignore: must_be_immutable
// class ChooseDiaLog extends Dialog {
//
//  /*回调函数*/
//  var buttonCallback;
// /*判断按钮选中状态的 bool 值*/
//  List<bool> isCheck = [false, false, false, false, false];
//
//  int index;
//
//
//
//  ChooseDiaLog({
//    Key key,
//    @required this.buttonCallback,
////    int selectIndex,
//    @required this.index,
//  }) : super(key: key);
//
//
//
//
//
//  @override
//  Widget build(BuildContext context) {
//
//     isCheck[index] = true;
//
//    return Padding(
//      padding: const EdgeInsets.only(left: 0, right: 0),
//      child: Material(
//        type: MaterialType.transparency,
////        color: Colors.red,
//        child: Padding(
//          padding: EdgeInsets.only(top: 60),
//          child: Stack(
//            children: <Widget>[
//              Positioned(
//                left: 18,
//                right: 18,
//                child: Container(
//                  decoration: ShapeDecoration(
//                      color: Colors.white,
//                      shape: RoundedRectangleBorder(
//                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
//                      )),
//                  margin: EdgeInsets.all(0),
//                  height: 281,
//                  child:
//                      StatefulBuilder(builder: (context, StateSetter setState) {
//                    return ListView(
//                      children: <Widget>[
//                        ListTile(
//                          title: Text(
//                            "潜在客户",
//                            style: TextStyle(
//                              color: isCheck[0]
//                                  ? Color(0xFF007AFF)
//                                  : Color(0xFF282828),
//                            ),
//                          ),
//                          onTap: () {
//                            setState(() {
//                              isCheck[0] = true;
//                              if (isCheck[0]) {
//                                isCheck[1] = !isCheck[0];
//                                isCheck[2] = !isCheck[0];
//                                isCheck[3] = !isCheck[0];
//                                isCheck[4] = !isCheck[0];
//                              }
//                            });
//                            buttonCallback(0);
//                            print("sdasdasd");
//                          },
//                        ),
//                        ListTile(
//                          title: Text(
//                            "签约客户",
//                            style: TextStyle(
//                              color: isCheck[1]
//                                  ? Color(0xFF007AFF)
//                                  : Color(0xFF282828),
//                            ),
//                          ),
//                          onTap: () {
//                            setState(() {
//                              isCheck[1] = true;
//                              if (isCheck[1]) {
//                                isCheck[0] = !isCheck[1];
//                                isCheck[2] = !isCheck[1];
//                                isCheck[3] = !isCheck[1];
//                                isCheck[4] = !isCheck[1];
//                              }
//                            });
//                            buttonCallback(1);
//                          },
//                        ),
//                        ListTile(
//                          title: Text(
//                            "断约客户",
//                            style: TextStyle(
//                              color: isCheck[2]
//                                  ? Color(0xFF007AFF)
//                                  : Color(0xFF282828),
//                            ),
//                          ),
//                          onTap: () {
//                            setState(() {
//                              isCheck[2] = true;
//                              if (isCheck[2]) {
//                                isCheck[0] = !isCheck[2];
//                                isCheck[1] = !isCheck[2];
//                                isCheck[3] = !isCheck[2];
//                                isCheck[4] = !isCheck[2];
//                              }
//                            });
//                            buttonCallback(2);
//                          },
//                        ),
//                        ListTile(
//                          title: Text(
//                            "Leade客户",
//                            style: TextStyle(
//                              color: isCheck[3]
//                                  ? Color(0xFF007AFF)
//                                  : Color(0xFF282828),
//                            ),
//                          ),
//                          onTap: () {
//                            setState(() {
//                              isCheck[3] = true;
//                              if (isCheck[3]) {
//                                isCheck[0] = !isCheck[3];
//                                isCheck[1] = !isCheck[3];
//                                isCheck[2] = !isCheck[3];
//                                isCheck[4] = !isCheck[3];
//                              }
//                            });
//                            buttonCallback(3);
//
//                          },
//                        ),
//                        ListTile(
//                          title: Text(
//                            "强开客户",
//                            style: TextStyle(
//                              color: isCheck[4]
//                                  ? Color(0xFF007AFF)
//                                  : Color(0xFF282828),
//                            ),
//                          ),
//                          onTap: () {
//                            setState(() {
//                              isCheck[4] = true;
//                              if (isCheck[4]) {
//                                isCheck[0] = !isCheck[4];
//                                isCheck[1] = !isCheck[4];
//                                isCheck[2] = !isCheck[4];
//                                isCheck[3] = !isCheck[4];
//                              }
//                            });
//                            buttonCallback(4);
//
//                          },
//                        ),
//                      ],
//                    );
//                  }),
//                ),
//              ),
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}

class ChooseDiaLog extends StatefulWidget {
  /*回调函数*/
  final buttonCallback;

  /*判断按钮选中状态的 bool 值*/
  List<bool> isCheck = [false, false, false, false, false];

  var selecdIndex;

  ChooseDiaLog({
    Key key,
    @required this.buttonCallback,
    @required this.selecdIndex,
  }) : super(key: key);

  @override
  _ChooseDialogState createState() => new _ChooseDialogState();
}

class _ChooseDialogState extends State<ChooseDiaLog> {
  @override
  void initState() {
    widget.isCheck[widget.selecdIndex] = true;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 0, right: 0),
        child: Material(
          type: MaterialType.transparency,
          child: Padding(
            padding: EdgeInsets.only(top: 60),
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: 18,
                  right: 18,
                  child: Container(
                    decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        )),
                    margin: EdgeInsets.all(0),
                    height: 281,
                    child: ListView(
                      children: <Widget>[
                        ListTile(
                          title: Text(
                            "潜在客户",
                            style: TextStyle(
                              color: widget.isCheck[0]
                                  ? Color(0xFF007AFF)
                                  : Color(0xFF282828),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              widget.isCheck[0] = true;
                              if (widget.isCheck[0]) {
                                widget.isCheck[1] = !widget.isCheck[0];
                                widget.isCheck[2] = !widget.isCheck[0];
                                widget.isCheck[3] = !widget.isCheck[0];
                                widget.isCheck[4] = !widget.isCheck[0];
                              }
                            });
                            widget.buttonCallback(0);
                            print("sdasdasd");
                          },
                        ),
                        ListTile(
                          title: Text(
                            "签约客户",
                            style: TextStyle(
                              color: widget.isCheck[1]
                                  ? Color(0xFF007AFF)
                                  : Color(0xFF282828),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              widget.isCheck[1] = true;
                              if (widget.isCheck[1]) {
                                widget.isCheck[0] = !widget.isCheck[1];
                                widget.isCheck[2] = !widget.isCheck[1];
                                widget.isCheck[3] = !widget.isCheck[1];
                                widget.isCheck[4] = !widget.isCheck[1];
                              }
                            });
                            widget.buttonCallback(1);
                          },
                        ),
                        ListTile(
                          title: Text(
                            "断约客户",
                            style: TextStyle(
                              color: widget.isCheck[2]
                                  ? Color(0xFF007AFF)
                                  : Color(0xFF282828),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              widget.isCheck[2] = true;
                              if (widget.isCheck[2]) {
                                widget.isCheck[0] = !widget.isCheck[2];
                                widget.isCheck[1] = !widget.isCheck[2];
                                widget.isCheck[3] = !widget.isCheck[2];
                                widget.isCheck[4] = !widget.isCheck[2];
                              }
                            });
                            widget.buttonCallback(2);
                          },
                        ),
                        ListTile(
                          title: Text(
                            "Leade客户",
                            style: TextStyle(
                              color: widget.isCheck[3]
                                  ? Color(0xFF007AFF)
                                  : Color(0xFF282828),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              widget.isCheck[3] = true;
                              if (widget.isCheck[3]) {
                                widget.isCheck[0] = !widget.isCheck[3];
                                widget.isCheck[1] = !widget.isCheck[3];
                                widget.isCheck[2] = !widget.isCheck[3];
                                widget.isCheck[4] = !widget.isCheck[3];
                              }
                            });
                            widget.buttonCallback(3);
                          },
                        ),
                        ListTile(
                          title: Text(
                            "强开客户",
                            style: TextStyle(
                              color: widget.isCheck[4]
                                  ? Color(0xFF007AFF)
                                  : Color(0xFF282828),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              widget.isCheck[4] = true;
                              if (widget.isCheck[4]) {
                                widget.isCheck[0] = !widget.isCheck[4];
                                widget.isCheck[1] = !widget.isCheck[4];
                                widget.isCheck[2] = !widget.isCheck[4];
                                widget.isCheck[3] = !widget.isCheck[4];
                              }
                            });
                            widget.buttonCallback(4);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



/*
* 自定义客户详情弹窗
* */

class CustomPopupmenu extends StatefulWidget {



  @override
  _CustomPopupmenuState createState() => new _CustomPopupmenuState();
}

class _CustomPopupmenuState extends State<CustomPopupmenu>{

  List<String> strChild = ["放弃客户","编辑客户","转化客户","删除客户","还原客户","领取客户","分配销售","等级标签"];
  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: () {
        Navigator.pop(context);
        print("dsadasda");
      },


      child: Material(
        type: MaterialType.transparency,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  )),
              margin: const EdgeInsets.only(left: 218, right: 9,top: 60),
              height: 48 * strChild.length.toDouble(),
              child: ListView.separated(
                itemCount: 8,
                itemBuilder: (BuildContext context, int index){
                  return _setUpWidget(index);

                },
                separatorBuilder: (BuildContext context, int index) {

                  return Container(
                    margin: const EdgeInsets.only(left: 48),
                    color: Colors.red,
                    height: .5,

                  );
                },

              ),

            ),
          ],
        ),
      ),

    );
  }

  // 配置行的 UI
  Widget _setUpWidget(int index) {
    return GestureDetector(
      onTap: (){
        print("我被点击了 $index ");
        Navigator.pop(context);

      },
      child: Container(
        height: 48,
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 18,top: 18,bottom: 8),
              width: 21,
              height: 21,
              color: Colors.yellow,

            ),
            Container(
              margin: EdgeInsets.only(left: 53,top: 15,bottom: 8),
              child: Text(strChild[index]),
            ),

         ],
        ),
      ),
    );

  }

}
