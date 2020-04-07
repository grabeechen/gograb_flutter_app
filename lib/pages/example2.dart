import 'package:flutter/material.dart';  // 載入 material 函式庫(包含material的元件)

// main 是 Dart 程式，最一開始的進入點
// runApp 是 Flutter 程式進入點，若沒有載入上方 material 函式庫，將會不認識 runApp。

main() {
	runApp(MyApp());
}


class MyApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
				home: Scaffold(
					appBar: AppBar(
						title: Text("Grabee's flutter studio"),
					),
					body: HomePage(),
				));
	}
}

class HomePage extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Container(color: Colors.black54);
	}
}

// ---------- StatefulWidget: 需要寫兩個Class: 一個寫State, 一個寫Widget -------------------

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
