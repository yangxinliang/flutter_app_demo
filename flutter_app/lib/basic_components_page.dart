import 'package:flutter/material.dart';

class BasicWidget extends StatefulWidget {
  final String title;

  const BasicWidget({Key key, this.title}) : super(key: key);

  @override
  _BasicWidgetState createState() => _BasicWidgetState();
}

class _BasicWidgetState extends State<BasicWidget> {
  bool _switchSelected = true; //维护单选开关状态
  bool _checkboxSelected = true; //维护复选框状态

  //定义一个controller
  TextEditingController _loginController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("基本组件"),
      ),
      body: Container(
//        color: Colors.yellow,
        margin: EdgeInsets.only(left: 20, top: 50),
        height: 40,
        width: 200,
//        height: 20,

        child: _configTextField(),
      ),
    );
  }

  // 文本一般属性的设置
  Widget _configText() {
//    const Text(
//        this.data,  // 文字内容必须参数
//    {
//    Key key,
//    this.style, // 文字的样子 如 文字大小，字号，颜色等
//    this.strutStyle, // 使用的特定的分割
//    this.textAlign,  // 文字的对齐方式
//    this.textDirection, // 文本方向
//    this.locale,    // 用于选中区域特定字形的语言环境
//    this.softWrap,  // 某一行文本过长是否需要换行，默认是 true
//    this.overflow, //   处理视觉溢出
//    this.textScaleFactor, // 逻辑像素字体的像素数
//    this.maxLines,   // 文字最多可以有多少行
//    this.semanticsLabel,  // 图像描述
//    this.textWidthBasis,
//    })
    return Text(
      "测试使用Text",
      style: TextStyle(
          color: Colors.red, fontSize: 16, fontWeight: FontWeight.w600),
//       textAlign: TextAlign.left,
//        textDirection: TextDirection.ltr,
//        textWidthBasis: TextWidthBasis.parent,
//        overflow: TextOverflow.ellipsis,
    );
  }

  // 按钮系统提供大概五种RaisedButton、FlatButton、OutlineButton、IconButton、FlatButton
  Widget _configButton() {
    return Column(
      children: <Widget>[
        // "漂浮"按钮，它默认带有阴影和灰色背景，按下后，阴影会变大，
        RaisedButton(
          child: Text("按钮RaisedButton"),
          onPressed: () {},
        ),
        // FlatButton即扁平按钮，默认背景透明并不带阴影。按下后，会有背景色
        FlatButton(
          child: Text("按钮RaisedButton"),
          onPressed: () {},
        ),
        //OutlineButton默认有一个边框，不带阴影且背景透明。按下后，边框颜色会变亮、同时出现背景和阴影(较弱
        OutlineButton(
          child: Text("normal"),
          onPressed: () {},
        ),
        //IconButton是一个可点击的Icon，不包括文字，默认没有背景，点击后会出现背景 上面三种也可以使用图标
        IconButton(
          icon: Icon(Icons.thumb_up),
          onPressed: () {},
        ),
        //定义一个背景蓝色，两边圆角的按钮
        // this.elevation = 2.0, //正常状态下的阴影
        //  this.highlightElevation = 8.0,//按下时的阴影
        //  this.disabledElevation = 0.0,// 禁用时的阴影
        FlatButton(
          color: Colors.blue,
          highlightColor: Colors.blue[700],
          colorBrightness: Brightness.dark,
          splashColor: Colors.grey,
          child: Text("FlatButton"),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          onPressed: () {},
        )
      ],
    );
  }

  // 通常加载图片的两种方式
  Widget _configImage() {
    return Column(
      children: <Widget>[
        // 加载本地的图片
        Image(
          image: AssetImage("assets/demo.png"),
          height: 100,
          width: 100,
        ),
        // 加载网路图片
        Image(
          image: NetworkImage(
              "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2960932577,277299827&fm=26&gp=0.jpg"),
          width: 400, // 图片的宽度
          height: 400, // 图片的高度
        ),
        // 系统还自带了一些 icon 图标
        Icon(
          Icons.accessible,
          color: Colors.green,
        ),
        // 返回图标
        Icon(
          Icons.arrow_back_ios,
          color: Colors.green,
        ),
      ],
    );
  }
  // 开关和 复选框的使用
  Widget _configSwitchAndCheckbox() {
    return Column(
      children: <Widget>[
        Switch(
          value: _switchSelected, //当前状态
          onChanged: (value) {
            //重新构建页面
            setState(() {
              _switchSelected = value;
            });
          },
        ),
        Checkbox(
          value: _checkboxSelected, //当前状态
          activeColor: Colors.red, //选中时的颜色
          onChanged: (value) {
            setState(() {
              _checkboxSelected = value;
            });
          },
        )
      ],
    );
  }

  // 文本输入框主要属性的作用
  Widget _configTextField() {
    return TextField(
        //控制正在编辑的文本。通过其可以拿到输入的文本值
        //获取方式 String value=controller.text
         controller: _loginController,
         //给TextField设置装饰（形状等）
         decoration: InputDecoration(
//           labelText: "用户名",
          hintText: "用户名或者邮箱",
          hintStyle: TextStyle(

            color: Colors.yellow,
            fontSize: 14,
          ),
            // 输入框边框设置
//           border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(10.0),
//               borderSide: BorderSide(color: Colors.transparent)
//           ),

           disabledBorder: InputBorder.none,
           enabledBorder:  InputBorder.none,
           focusedBorder:   InputBorder.none,

        ),

      // 键盘类型
         keyboardType: TextInputType.number,
      //控制键盘的功能键 指enter键，比如此处设置为next时，enter键
      //显示的文字内容为 下一步
        textInputAction: TextInputAction.next,
      //是否是密码
        obscureText: false,
      //文本对齐方式(即光标初始位置)
        textAlign: TextAlign.left,
       //输入文本的样式
//        style: TextStyle(fontSize: 30.0, color: Colors.blue),
      //最大行数
//      maxLines: 1,

      //最大长度，设置此项会让TextField右下角有一个输入数量的统计字符串
      //这种情况一般是不符合我们设计的要求的，但是有需要限制其输入的位数
      // 这时候我们可以使用下方的属性来限制
//      maxLength: 9,
      // 跟最大长度限制对应，如果此属性设置为false,当输入超过最大长度
      // 限制时，依然会显示输入的内容，为true不会（默认为 true）
//      maxLengthEnforced: false,

      // 限制输入的 最大长度  TextField右下角没有输入数量的统计字符串
//      inputFormatters: [LengthLimitingTextInputFormatter(11)],

      //允许的输入格式 下方的模式指只允许输入数字
//      inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],

      //控制此小部件是否具有键盘焦点。
//      focusNode: FocusNode(),

      //是否自动更正
//      autocorrect:false,

      //是否自动获得焦点
//      autofocus: false,

      //是否禁用textfield:如果为false, textfield将被“禁用”
//      enabled: true,

      //光标颜色
//      cursorColor: Colors.red,

      //光标宽度
//      cursorWidth: 5.0,

      //光标圆角弧度
//      cursorRadius: Radius.circular(5.0),

//      //内容改变的回调
//      onChanged: (text) {
//        print('change $text');
//      },
//
//      //内容提交(按回车)的回调
//      onSubmitted: (text) {
//        print('submit $text');
//      },
//
//      //按回车时调用
//      onEditingComplete: (){
//        print('onEditingComplete');
//      },
//


    );

  }






}
