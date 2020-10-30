import 'package:aike_flutter/bridge/aike_flutter_bridge.dart';
import 'package:flutter/material.dart';

class MyTab extends StatefulWidget {
  @override
  _MyTabState createState() => _MyTabState();
}

class _MyTabState extends State<MyTab> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Text('我的'),
          RaisedButton(
            onPressed: (){
              AikeFlutterBridge().flutter2Native("native","");
            },
            child: Text(
              '点我'
            ),
          )
        ],
      )
    );
  }
}
