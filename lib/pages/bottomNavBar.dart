import 'package:flutter/material.dart';
//import './pages/home.dart';
//import './pages/container_widget.dart';
//import './pages/common_widget.dart';
//import './pages/layout_widget.dart';

//前面定義回傳資料的型別
//void << 不要有回傳值 main() { runApp(MyApp()); }   大括號可省略
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			home: Scaffold(
				body: BottomNavigationController(),
			),
		);
	}
}

class BottomNavigationController extends StatefulWidget {
	BottomNavigationController({Key key}) : super(key: key);

	@override
	_BottomNavigationControllerState createState() => _BottomNavigationControllerState();
}

class _BottomNavigationControllerState extends State<BottomNavigationController> {
	//目前選擇頁索引值
	int _currentIndex = 0; //預設值
//	final pages = [Home(), ContainerWidget(), CommonWidget(), LayoutWidget()];

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text("Grabee's flutter studio"),
			),
//			body: pages[_currentIndex],
			bottomNavigationBar: BottomNavigationBar(
				items: <BottomNavigationBarItem>[
					BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
					BottomNavigationBarItem(icon: Icon(Icons.chat), title: Text('Container')),
					BottomNavigationBarItem(icon: Icon(Icons.account_circle), title: Text('Common')),
					BottomNavigationBarItem(icon: Icon(Icons.account_circle), title: Text('Layout')),
				],
				currentIndex: _currentIndex, //目前選擇頁索引值
				fixedColor: Colors.amber, //選擇頁顏色
				onTap: _onItemClick, //BottomNavigationBar 按下處理事件
			),
		);
	}

	//BottomNavigationBar 按下處理事件，更新設定當下索引值
	void _onItemClick(int index) {
		setState(() {
			_currentIndex = index;
		});
	}
}