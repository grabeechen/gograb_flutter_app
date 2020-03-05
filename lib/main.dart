import 'package:flutter/material.dart';
import 'package:gograb_flutter_app/pages/example.dart'; // 載入 material 函式庫(包含material的原件)

// main 是 Dart 程式，最一開始的進入點
main() {
  runApp(MyApp());
}

// runApp 是 Flutter 程式進入點，若沒有載入上方 material 函式庫，將會不認識 runApp。
// 放在 Center 容器裡面 Text 的元件，將會被放置在畫面的正中間

//  狀態不會被改變, 畫面不更新, 降低系統的消耗
//  不能return null

//  需要寫兩個Class: 一個寫State, 一個寫Widget-------------------

//StatefulWidget 監控State有沒有被改變 -> 整個Scaffold(就是一個page的widget)被刷新

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
		    appBar: AppBar(
		      title: Text('Grabee gogo'),
		    ),
		    body: HomePage(),
    ));
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Hello it is flutter practice.'),
    );
  }
}

//class MyApp2 extends StatefulWidget {
//	@override
//	_MyApp2State createState() => _MyApp2State();
//}
//
//class _MyApp2State extends State<MyApp2> {
//	@override
//	Widget build(BuildContext context) {
//		return Container();
//	}
//}
