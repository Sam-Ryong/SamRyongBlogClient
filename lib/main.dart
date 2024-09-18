import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sam_ryong_blog_client/common/leftbar.dart';
import 'package:sam_ryong_blog_client/mainpage/mainpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '홍삼룡의 개발자 블로그',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('홍삼룡의 개발자 블로그'),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.person), onPressed: () {}),
        ],
        backgroundColor: Colors.redAccent,
      ),
      body: const Row(
        children: [
          Leftbar(),
          MainPage(),
        ],
      ),
    );
  }
}
