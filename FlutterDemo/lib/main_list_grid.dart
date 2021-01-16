import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'res/ListData.dart';

void main(List<String> args) {
  runApp(MyApp());
}

// 自定义组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          // 导航栏
          title: Text('Flutter Demo'),
        ),
        body: HomeContent(), // 内容
        backgroundColor: Colors.white,
      ),
    );
  }
}

// // 内容组件
// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       // 使用Container组件，类似于div
//       child: Container(
//         /// 加载本地图片
//         child: Image.asset('images/test01.jpg'),

//         // child: Image.network(
//         //     'https://c-ssl.duitang.com/uploads/blog/202011/06/20201106134524_8560e.jpg'),
//         // height: 300.0,
//         // width: 300.0,
//         // decoration: BoxDecoration(
//         //   color: Colors.blue,
//         //   // border: Border.all(
//         //   //   color: Colors.black,
//         //   //   width: 2.0,
//         //   // ),
//         //   borderRadius: BorderRadius.circular(150),
//         //   image: DecorationImage(
//         //     image: NetworkImage(
//         //       'https://c-ssl.duitang.com/uploads/blog/202011/06/20201106134524_8560e.jpg',
//         //       scale: 1.0,
//         //     ),
//         //     fit: BoxFit.cover,
//         //   ),
//         // ),
//         // padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
//         // alignment: Alignment.center,

//         /////
//         /// ClipOval 裁剪圆形图片
//         /// ClipRect 裁剪矩形图片
//         /// ClipRRect 裁剪圆角矩形图片
//         // child: ClipRRect(
//         //   child: Image.network(
//         //     'https://c-ssl.duitang.com/uploads/blog/202011/06/20201106134524_8560e.jpg',
//         //     width: 300,
//         //     height: 300,
//         //   ),
//         //   borderRadius: BorderRadius.circular(10),
//         // ),
//       ),
//     );
//   }
// }

// 列表ListView
// class HomeContent extends StatelessWidget {
//   List<Widget> _buildList() {
//     var contentList = listData.map((e) {
//       return ListTile(
//         leading: Image.network(e['imageUrl']),
//         title: Text(e['title']),
//         subtitle: Text(e['author']),
//       );
//     });
//     return contentList.toList();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: this._buildList(),
//     );
//   }
// }

// // ListView.builder 新建列表
// class HomeContent extends StatelessWidget {
//   Widget _getListContent(BuildContext context, int index) {
//     return ListTile(
//       leading: Image.network(listData[index]['imageUrl']),
//       title: Text(listData[index]['title']),
//       subtitle: Text(listData[index]['author']),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//         itemCount: listData.length, itemBuilder: this._getListContent);
//   }
// }

// GridView
// Padding组件
class HomeContent extends StatelessWidget {
  // List<Widget> _buildList() {
  //   var contentList = listData.map((e) {
  //     return Container(
  //       child: Column(
  //         children: [
  //           Image.network(e['imageUrl']),
  //           Text(e['title']),
  //           Text(e['author']),
  //         ],
  //       ),
  //       color: Colors.blue,
  //       height: 400,
  //     );
  //   });
  //   return contentList.toList();
  // }

  List<Widget> _buildList() {
    var contentList = listData.map((e) {
      return Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Image.network(
            e['imageUrl'],
            fit: BoxFit.cover,
          ));
    });
    return contentList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
      child: GridView.count(
        crossAxisCount: 2,
        children: this._buildList(),
        childAspectRatio: 1.7,
      ),
    );
  }
}
