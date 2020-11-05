import 'package:flutter/material.dart';

class DefalutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(''),
        ),
        body: Center(
          child: Text(
            '地址错误，请重新启动',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
