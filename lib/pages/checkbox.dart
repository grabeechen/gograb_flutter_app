import 'package:flutter/material.dart';

class CheckboxWidget extends StatefulWidget {
  @override
  _CheckboxWidgetState createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
	
	bool _value1 = false;
	bool _value2 = false;
	
	//we omitted the brackets '{}' and are using fat arrow '=>' instead, this is dart syntax
	void _value1Changed(bool value) => setState(() => _value1 = value);  // 在這裡處理畫面渲染或狀態變更
	void _value2Changed(bool value) => setState(() => _value2 = value);
	
	@override
	Widget build(BuildContext context) {
		return new Scaffold(
			appBar: new AppBar(
				title: new Text('Checkbox'),
			),
			//hit Ctrl+space in intellij to know what are the options you can use in flutter widgets
			body: new Container(
				padding: new EdgeInsets.all(32.0),
				child: new Center(
					child: new Column(
						children: <Widget>[
							new Checkbox(value: _value1, onChanged: _value1Changed),
							new Checkbox(value: _value1, onChanged: _value1Changed),
							new CheckboxListTile(
								value: _value2,
								onChanged: _value2Changed,
								title: new Text('Started'),
								controlAffinity: ListTileControlAffinity.leading,
//								subtitle: new Text('Subtitle'),
//								secondary: new Icon(Icons.archive),
								activeColor: Colors.red,
							),
						],
					),
				),
			),
		);
	}
}