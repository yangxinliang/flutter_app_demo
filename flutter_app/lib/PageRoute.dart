
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/ChooseDialog.dart';


class NewRoute extends StatefulWidget {


   @override
    _NewRouteState createState() => new _NewRouteState();

}

 class _NewRouteState extends State<NewRoute> {

   @override
   Widget build(BuildContext context) {


     Column buildButtonColumn(IconData icon, String label) {
       Color color = Theme.of(context).primaryColor;

    return new Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        new Icon(icon, color: color),
        new Text("第二个"),
        new Container(
          margin: const EdgeInsets.only(top: 8.0),
          child: new Text(
            label,
            style: new TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }



    var args = ModalRoute.of(context).settings.arguments;
    print(args);

//    return Column(
//      crossAxisAlignment: CrossAxisAlignment.start,
//      children: <Widget>[
//       Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Text("Helo word"),
//           Text("I am yangxinliang "),
//         ],
//       ),
//
//       Row(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Text("wo shi san ti "),
//           Text("wo shi ka wa yi"),
//         ],
//
//       ),
//
//
//      ],
//    );



    var nameStr;
    var password;
    TextEditingController _unameController=new TextEditingController();
    TextEditingController _pasnwordController=new TextEditingController();

     int ssss = 0;

    @override
    void initState() {



      super.initState();
      // 隐藏状态栏
//      SystemChrome.setEnabledSystemUIOverlays([]);

      print("initState  我是初始化");
    }



    void showAlertDialog(BuildContext context) {




       print("dsadsadsadas$ssss");
//      showDialog(
//        context: context,
//        barrierDismissible: false,
//
//        builder: (BuildContext context) {
//
//          return ChooseDiaLog(
//            selecdIndex: ssss,
//            buttonCallback: (index){
//              ssss = index;
//
//              Navigator.pop(context);
//              print("$index");
//
//
//            },
//
//          );
//
//        });
      showDialog(
          context: context,
          barrierDismissible: false,

          builder: (BuildContext context) {

            return CustomPopupmenu(
//              selecdIndex: ssss,
//              buttonCallback: (index){
//                ssss = index;
//
//                Navigator.pop(context);
//                print("$index");
//
//
//              },

            );

          });




    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "我是第二个页面",
        ),
      ),

     body: ListView(

       children: <Widget>[

          Container(
           width: 600,
           height: 240,
           color: Colors.red,

         ),

         Container(
           padding: const EdgeInsets.all(32),// 控制子组件的间距的
//           padding: const EdgeInsets.only(left: 0),// 控制子组件的间距的

//           margin: const EdgeInsets.only(left: 20,top: 10,right: 10),
           color: Colors.blue,

           child: Row(
             children: <Widget>[
               Expanded(
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: <Widget>[
                     Container(
                       padding: const EdgeInsets.only(bottom: 8.0),
                       color: Colors.green,
                       child:
                       Text(
                         "我是杨新亮dasdasdasdasdasde",
                         style: TextStyle(
                                fontWeight: FontWeight.bold,




                         ),
                       ),
                     ),
                     Text(
                       "dsadasd    asdasd",
                       style: new TextStyle(
                         color: Colors.grey[500],
                       ),

                     ),

                   ],
                 ),
               ),

               Icon(
                 Icons.star,
                 color: Colors.red[500],
               ),
                Text('41'),

             ],
           ),

         ),

          Container (
            color: Colors.yellow,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

                buildButtonColumn(Icons.call, 'CALL'),
                buildButtonColumn(Icons.near_me, 'ROUTE'),
                buildButtonColumn(Icons.share, 'SHARE'),


              ],
            ) ,

          ),

         Container(
           padding: const EdgeInsets.all(32),
           child: Text(
             "我饿德海电商嗲嗲爱的啊大胆的那点啊淡淡的蓝 啊淡定杀到哪三大胆大淡淡的来了你的啊蛋蛋啊大的爱的啊大大啊的啊的啊的啊的安定啊的啊的安定啊的啊的按时的阿萨德啊是的啊是的啊的阿萨德啊的啊到那时单地接阿"
                 "萨德纳杀到哪三大纳什男爵打开手机大神带你卡死你大胆圣诞节爱上你的骄傲是老大的  ",
             softWrap: true,

           ),
         ),

//         Material(
//
//           type: MaterialType.transparency,
//           color: Colors.red,
//           shape: BeveledRectangleBorder(
//            side: BorderSide(
//
//               width: 1.0,
//               color: Colors.blueAccent,
//               style: BorderStyle.none,
//
//             ),
//             borderRadius: BorderRadius.circular(50),
//           ),
//           child:  Container(
//             margin: const EdgeInsets.all(12),
//             color: Colors.brown,
//             height: 100,
//             width: 100,
//
//
//
//           )
//
//
//         ),

//         ChooseDiaLog(
//
//         titleString: "性别选择",
//
//
//         ),

         FlatButton(
           color: Colors.red,
           child: Text("按我就出来了"),
           onPressed: (){

             showAlertDialog(context);

           },

         ),


       ],


     ),




//     body: Wrap(
//       spacing: 8.0,
//       runSpacing: 8.0,
////       alignment: WrapAlignment.center,
//       children: <Widget>[
//        new Chip(
//          avatar: new CircleAvatar(backgroundColor: Colors.blue,child: Text("A"),),
//          label: new Text("Hamilton"),
//
//        ),
//
//         new Chip(
//           avatar: new CircleAvatar(backgroundColor: Colors.blue,child: Text("B"),),
//           label: new Text("Hamilton"),
//
//         ),
//
//         new Chip(
//           avatar: new CircleAvatar(backgroundColor: Colors.blue,child: Text("C"),),
//           label: new Text("Hamilton"),
//
//         ),
//
//         new Chip(
//           avatar: new CircleAvatar(backgroundColor: Colors.blue,child: Text("D"),),
//           label: new Text("Hamilton"),
//
//         ),
//
//         new Chip(
//           avatar: new CircleAvatar(backgroundColor: Colors.blue,child: Text("E"),),
//           label: new Text("Hamilton"),
//
//         ),
//
//         new Chip(
//           avatar: new CircleAvatar(backgroundColor: Colors.blue,child: Text("F"),),
//           label: new Text("Hamilton"),
//
//         ),
//
//
//
//       ],
//
//
//
//     ),

//     body: Flow(
//
//       delegate: TestFlowDelegate(margin: EdgeInsets.all(10.0)),
//       children: <Widget>[
//         new Container(width: 80.0,height: 80.0 , color: Colors.red,),
//         new Container(width: 80.0,height: 80.0 , color: Colors.green,),
//         new Container(width: 80.0,height: 80.0 , color: Colors.blue,),
//         new Container(width: 80.0,height: 80.0 , color: Colors.yellow,),
//         new Container(width: 80.0,height: 80.0 , color: Colors.brown,),
//         new Container(width: 80.0,height: 80.0 , color: Colors.purple,),
//         new Container(width: 80.0,height: 80.0 , color: Colors.blue,),
//         new Container(width: 80.0,height: 80.0 , color: Colors.red,),
//         new Container(width: 80.0,height: 80.0 , color: Colors.red,),
//         new Container(width: 80.0,height: 80.0 , color: Colors.red,),
//
//
//
//       ],
//
//
//     ),
//
//      body: Padding(
//        padding: EdgeInsets.all(16.0),
//        child: Column(
//
//          crossAxisAlignment: CrossAxisAlignment.start,
//          children: <Widget>[
//            Padding(
//              padding: const EdgeInsets.only(left: 8.0),
//              child: Text("yangxinliang"),
//
//            ),
//            Padding(
//              //上下各添加8像素补白
//              padding: const EdgeInsets.symmetric(vertical: 8.0),
//              child: Text("I am Jack"),
//            ),
//            Padding(
//              // 分别指定四个方向的补白
//              padding: const EdgeInsets.fromLTRB(20.0,.0,20.0,20.0),
//              child: Text("Your friend"),
//            )
//
//          ],
//        ),
//      ),
//
//      body: Container(
//
//        padding: EdgeInsets.fromLTRB(10, 10, 0 ,0 ),
//        color: Colors.red,
//
//       child: DecoratedBox(
//          decoration: BoxDecoration(
//              gradient: LinearGradient(colors:[Colors.red,Colors.orange[700]]), //背景渐变
//
//              borderRadius: BorderRadius.circular(3.0), //3像素圆角
//              boxShadow: [ //阴影
//                BoxShadow(
//                    color:Colors.black54,
//                    offset: Offset(2.0,2.0),
//                    blurRadius: 4.0
//                )
//              ]
//
//          ),
//          child: Padding(padding: EdgeInsets.fromLTRB(0,0, 40 ,40 ),
//            child: Text("登录",style: TextStyle(color: Colors.white),),
//          ),
//        ),
//
//
//      )


//        body:  Center(
//
//          child: ListView(
//
//            children: list,
//
//          ),
//
//
//
//        ),


//     DecoratedBox(
//            decoration: BoxDecoration(
//              gradient: LinearGradient(colors: [Colors.red, Colors.orange[700]]),// 背景渐变
//              borderRadius: BorderRadius.circular(3.0),
//              boxShadow: [
//               BoxShadow(
//                 color:  Colors.black54,
//                 offset: Offset(2.0, 2.0),
//                 blurRadius: 4.0
//
//               )
//
//              ]
//            ),
//
//              child: Padding(padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 18.0),
//              child: Text("Login", style: TextStyle(color: Colors.white),),
//
//          ),








//      body: Center(
//        child: new Column(
//
//
//
//          children: <Widget>[
//            TextField(
//              autofocus: true,
////              controller: _unameController,
//              decoration: InputDecoration(
//                 labelText: "用户名",
//                 hintText: "用户名或邮箱",
//
//
//              ),
//              maxLength: 10,
//              onChanged: (u){
//                nameStr = u;
//
//                print("您输入的名字： $nameStr");
//
//              },
//            ),
//
//            TextField(
//              decoration: InputDecoration(
//
//                labelText: "密码",
//                hintText: "您登录的密码",
//
//
//              ),
//              obscureText: true,
//              onChanged: (v){
//                password = v;
//
//                print("您的密码是：$v");
//              },
//            ),
//
//            FlatButton(
//              child: Text("登陆"),
//              onPressed: (){
//                print("这是登录按钮");
//              },
////              textColor: Colors.red,
//
//
//            ),
//
//
//          ],
//
//
//        )
//
//      ),

    );
  }


}

class TestFlowDelegate extends FlowDelegate {

  EdgeInsets margin = EdgeInsets.zero;

  TestFlowDelegate({this.margin});


  @override
  void paintChildren(FlowPaintingContext context) {
  var x = margin.left;
  var y = margin.top;

  for (int i = 0; i < context.childCount; i ++) {
    var w = context.getChildSize(i).width + x + margin.right;
    if (w < context.size.width) {
      context.paintChild(i,
      transform: new Matrix4.translationValues(x, y, 0.0));
      x = w +margin.left;

    }else {
      x = margin.left;
      y += context.getChildSize(i).height + margin.top + margin.bottom;
      context.paintChild(i,
        transform: new Matrix4.translationValues(x, y, 0.0)
      );
      x += context.getChildSize(i).width + margin.left + margin.right;


    }


  }

  }

  @override
  getSize(BoxConstraints constraints) {

    return Size(double.infinity,300.0); // 返回的很Flow 的大小
  }



  @override
  bool shouldRepaint(FlowDelegate oldDelegate) {

    return oldDelegate != this;
  }

}



class Rectangle {

  num left;
  num top;
  num width;
  num height;

  Rectangle(this.left,this.top,this.width,this.height);


  // get 方法
  num get right {

    return left + top;

  }
  // set 方法
  set right(num value) {

      left = value + width;
  }

}


class Shape {

   Shape();


   factory Shape.fromTypeName(String typeName){

     if (typeName == 'square') return Square();
     if (typeName == 'circle') return Circle();

     print('I don\'t recognize $typeName');
     return null;

   }

}



class Square extends Shape{}

class Circle extends Shape{}






