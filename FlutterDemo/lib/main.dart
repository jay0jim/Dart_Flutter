import 'package:flutter/material.dart';

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
        ),
    ); 
  }
}

// 内容组件
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hello, flutter.',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40,
          color: Colors.yellow,
        ),
      ),
    );
  }
}
