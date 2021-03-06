import 'package:flutter/material.dart';

//void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			home: Scaffold(
					appBar: AppBar(
						title: Text('Stats overview'),
					),
					body: HomePage()),
		);
	}
}

class HomePage extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Center(
			child: Stack(
				alignment: Alignment.bottomCenter,
				children: <Widget>[
					Container(
						color: Colors.amber,
						child: Text('111', style: TextStyle(fontSize: 100)),
					),
					Container(
						color: Colors.red,
						child: Text('222', style: TextStyle(fontSize: 50)),
					)
				],
			),
		);
	}
}
