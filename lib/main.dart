import 'package:aike_flutter/my_tab.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp(MyTab()));

class MyApp extends StatelessWidget {

  Widget page;
  MyApp(this.page); // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:page
    );
  }
}


