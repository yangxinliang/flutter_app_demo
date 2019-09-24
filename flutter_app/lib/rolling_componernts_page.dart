import 'package:flutter/material.dart';

class RollingWidget extends StatefulWidget {
  @override
  _RollingWidgetState createState() => _RollingWidgetState();
}

class _RollingWidgetState extends State<RollingWidget> {

  // 监听 滚动位置的对象
  ScrollController _controller =  ScrollController();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //监听滚动事件，打印滚动位置
    _controller.addListener(() {
      print(_controller.offset); //打印滚动位置

      });

  }
  @override
  void dispose() {
    //为了避免内存泄露，需要调用_controller.dispose
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return
//      _configCustomScrollView();

      Scaffold(
      appBar: AppBar(
        title: Text("滚动的组件"),
      ),
      body: _configSingleChildScrollView(),
    );
  }

  // SingleChildScrollView类似于Android中的ScrollView，它只能接收一个子组件
  Widget _configSingleChildScrollView() {
//    SingleChildScrollView({
//    this.scrollDirection = Axis.vertical, //滚动方向，默认是垂直方向
//    this.reverse = false,//是否按照阅读方向相反的方向滑动
//    this.padding,
//    bool primary,//指是否使用widget树中默认的PrimaryScrollController
//    this.physics, // 用户完成下拉操作，执行动画，iOS下弹性效果、Android下微光效果。
//    this.controller,此属性接受一个ScrollController对象，比如可以监听到 滚动的位置
//    this.child,
//    })

    // 定义一个显示的字符串
    String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    return Scrollbar(
      // 显示进度条
      child: SingleChildScrollView(
        controller: _controller,
        padding: EdgeInsets.all(16.0), // 子控件到父控件 间距
        child: Center(
          child: Column(
            //动态创建一个List<Widget>
            children: str
                .split("")
                //每一个字母都用一个Text显示,字体为原来的两倍
                .map((c) => Text(
                      c,
                      textScaleFactor: 2.0,
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }

  //ListView是最常用的可滚动组件之一，它可以沿一个方向线性排布所有子组件，并且它也支持基于Sliver的延迟构建模型
  Widget _configListView() {
    // 这种方式适合只有少量子组件的情况，大量加载列表可以使用 ListView.builder
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(20.0),
      children: <Widget>[
        Text('测试111111'),
        Text('测试111111'),
        Text('测试111111'),
        Text('测试111111'),
      ],
    );
  }

  // ListView.builder适合列表项比较多（或者无限）的情况，因为只有当子组件真正显示的时候才会被创建
  Widget _configListViewBuilder() {
    return ListView.builder(
        itemCount: 100, // 加载的子组件的个数
        itemExtent: 50.0, //强制高度为50.0
        //它是列表项的构建器，类型为IndexedWidgetBuilder，返回值为一个widget。
        // 当列表滚动到具体的index位置时，会调用该构建器构建列表项。
        itemBuilder: (BuildContext context, int index) {
          return Text("$index");
        });
  }

  //ListView.separated可以在生成的列表项之间添加一个分割组件，
  // 它比ListView.builder多了一个separatorBuilder参数，该参数是一个分割组件生成器
  Widget _configListViewSeparated() {
    return ListView.separated(
      itemCount: 100,
      //列表项构造器
      itemBuilder: (BuildContext context, int index) {
        return ListTile(title: Text("$index"));
      },
      //分割器构造器
      separatorBuilder: (BuildContext context, int index) {
        return Divider(
          color: Colors.red,
        );
      },
    );
  }

  // GridView可以构建一个二维网格列表  GridView和ListView的大多数参数都是相同的，它们的含义也都相同的
  Widget _configGridViewList() {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // 横轴三个子widget
        childAspectRatio: 1.0, // 宽高比为1时  子元素在横轴长度和主轴长度的比例
        // 主轴方向的间距
        //mainAxisSpacing:
        // 横轴方向子元素的间距
        // crossAxisSpacing:
      ),
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          color: Colors.red,
          child: Text("测试GridView1"),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.yellow,
          child: Text("测试GridView2"),
        ),
        Container(
          color: Colors.green,
          alignment: Alignment.center,
          child: Text("测试GridView3"),
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: Text("测试GridView4"),
        ),
        Container(
          color: Colors.purple,
          alignment: Alignment.center,
          child: Text("测试GridView5"),
        ),
      ],
    );
  }

  // GridView.count构造函数内部使用了SliverGridDelegateWithFixedCrossAxisCount
  Widget _configGridCount() {
    return GridView.count(
      crossAxisCount: 3,
      childAspectRatio: 1.0,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          color: Colors.red,
          child: Text("测试GridView.count1"),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.yellow,
          child: Text("测试GridView.count2"),
        ),
        Container(
          color: Colors.green,
          alignment: Alignment.center,
          child: Text("测试GridView.count3"),
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: Text("测试GridView.count4"),
        ),
        Container(
          color: Colors.purple,
          alignment: Alignment.center,
          child: Text("测试GridView.count5"),
        ),
      ],
    );
  }
  //当子widget比较多时，我们可以通过GridView.builder来动态创建子widget
  Widget _configGridbuilder() {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, //每行三列
          childAspectRatio: 1.0, //显示区域宽高相等
          crossAxisSpacing: 10.0, //横轴方向子元素的间距
          mainAxisSpacing: 10.0, //主轴方向的间距
        ),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.center,
            color: Colors.red,
            child: Text("测试GridView.builder $index"),
          );
        });
  }


  Widget _configCustomScrollView() {
    //因为本路由没有使用Scaffold，为了让子级Widget(如Text)使用
    //Material Design 默认的样式风格,我们使用Material作为本路由的根。
    return Material(
      child: CustomScrollView(
        slivers: <Widget>[
          //AppBar，包含一个导航栏
          SliverAppBar(
            pinned: true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Demo'),
              background: Image.asset(
                "./images/avatar.png", fit: BoxFit.cover,),
            ),
          ),
          // 网格视图
          SliverPadding(
            padding: const EdgeInsets.all(8.0),
            sliver: new SliverGrid( //Grid
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, //Grid按两列显示
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 4.0,
              ),
              delegate: new SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  //创建子widget
                  return new Container(
                    alignment: Alignment.center,
                    color: Colors.cyan[100 * (index % 9)],
                    child: new Text('grid item $index'),
                  );
                },
                childCount: 20,
              ),
            ),
          ),
          //List 加载控件
          new SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: new SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  //创建列表项
                  return new Container(
                    alignment: Alignment.center,
                    color: Colors.lightBlue[100 * (index % 9)],
                    child: new Text('list item $index'),
                  );
                },
                childCount: 50 //50个列表项
            ),
          ),
        ],
      ),
    );

  }





}
