import 'package:flutter/material.dart';
import 'dart:math' as math;

void main(List<String> args) {
  runApp(MyApp());
}

// 自定义组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar( // 导航栏
          title: Text('Flutter Demo'),
        ),
        body: HomeContent(), // 内容
        backgroundColor: Colors.grey,
        ),
    ); 
  }
}

// 内容组件
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      // 使用Container组件，类似于div
      child: Container(
        child: Transform.rotate(
          angle: math.pi/2,
          alignment: Alignment.center,
          child: Text(
            'Hello, flutter.',
            textDirection: TextDirection.ltr,
            // textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40,
              color: Colors.yellow,
          ),
        ),
        ),
        height: 300.0,
        width: 300.0,
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(
            color: Colors.black,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        alignment: Alignment.center,
        

      ),
    );
  }
}
