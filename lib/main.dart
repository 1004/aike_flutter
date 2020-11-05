import 'package:aike_flutter/main/main_page_register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boost/flutter_boost.dart';

void main() => runApp(MyApp());
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}
class _MyAppState extends State<MyApp>{

  @override
  void initState() {
    super.initState();
    // 注册界面，onePage名称与PageRouter里名称对应
    MainPageRegister.registerPage();
    // 添加观察者，为了方便查看状态，可选设置
    FlutterBoost.singleton.addBoostNavigatorObserver(TestBoostNavigatorObserver());
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // FlutterBoost初始化
        builder: FlutterBoost.init(postPush: _onRoutePushed),
        home: Container(
          color: Colors.white,
        ));
  }

  void _onRoutePushed(
      String pageName, String uniqueId, Map params, Route route, Future _) {
  }
}



class TestBoostNavigatorObserver extends NavigatorObserver{
  void didPush(Route<dynamic> route, Route<dynamic> previousRoute) {
    print("flutterboost#didPush");
  }

  void didPop(Route<dynamic> route, Route<dynamic> previousRoute) {
    print("flutterboost#didPop");
  }

  void didRemove(Route<dynamic> route, Route<dynamic> previousRoute) {
    print("flutterboost#didRemove");
  }

  void didReplace({Route<dynamic> newRoute, Route<dynamic> oldRoute}) {
    print("flutterboost#didReplace");
  }
}
