import 'package:flutter/material.dart';

//----------------ALL checkbox---------------------------------
class CheckboxAllWidget extends StatefulWidget {
	@override
	_CheckboxAllWidgetState createState() => _CheckboxAllWidgetState();
}

class  _CheckboxAllWidgetState extends State<CheckboxAllWidget> {

	Map<String, bool> titleName = {
		'Stared': false,
		'Half time': false,
		'Full time': false,
		'Goals': false,
		'Red cards': false,
		'Missed penalty': false,
		'Lineup': false,
	};

	List<IconData> iconData = [
		Icons.timer,
		Icons.access_alarm,
		Icons.alarm_add,
		Icons.insert_emoticon,
		Icons.class_,
		Icons.donut_large,
		Icons.blur_linear,
	];

	var tmpArray = [];

	getCheckboxItems() {
		titleName.forEach((key, value) {
			if (value == true) {
				tmpArray.add(key);
			}
		});
		print(tmpArray);

		tmpArray.clear();
	}

	cancelReturn(){   // 這邊要做返回上一個畫面
		tmpArray.clear();
		print(tmpArray);
	}

	@override
	Widget build(BuildContext context) {
		bool _allValue = false;
		final checkAll = Checkbox(
			value: _allValue,
			onChanged: (bool newValue) {
				setState(() {
					_allValue = newValue;
				});
			},
		);

		return Column(
			crossAxisAlignment: CrossAxisAlignment.center,
			children: <Widget>[
				Text("Set Alerts",
						style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
				Checkbox(
					value: _allValue,
					activeColor: Colors.yellow,
					checkColor: Colors.black,
					onChanged: (bool value) {
						setState(() {
							_allValue = value;
						});
						print("我打勾：$value");
					},
				),
			],
		);
	}
}

//----------------List checkbox---------------------------------

class CheckboxWidget extends StatefulWidget {
  @override
  _CheckboxWidgetState createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {

//	bool _value1 = false;
//	bool _value2 = false;
	//we omitted the brackets '{}' and are using fat arrow '=>' instead, this is dart syntax
//	void _value1Changed(bool value) => setState(() => _value1 = value);  // 在這裡處理畫面渲染或狀態變更

	Map<String, bool> titleName = {
		'Stared': false,
		'Half time': false,
		'Full time': false,
		'Goals': false,
		'Red cards': false,
		'Missed penalty': false,
		'Lineup': false,
	};

	List<IconData> iconData = [
		Icons.timer,
		Icons.access_alarm,
		Icons.alarm_add,
		Icons.insert_emoticon,
		Icons.class_,
		Icons.donut_large,
		Icons.blur_linear,
	];

	var tmpArray = [];

	getCheckboxItems() {
		titleName.forEach((key, value) {
			if (value == true) {
				tmpArray.add(key);
			}
		});
		// Printing all selected items on Terminal screen.
		// Get all selected Checkbox items.
		print(tmpArray);

		// Clear array after use.
		tmpArray.clear();
	}

	cancelReturn(){   // 這邊要做返回上一個畫面
		tmpArray.clear();
		print(tmpArray);
	}

	@override
	Widget build(BuildContext context) {
		bool _allValue = false;
		final checkAll=  CheckboxListTile(
			title: Text("ALL", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
			value: false,
			activeColor: Colors.yellow,
			checkColor: Colors.black,
			onChanged: (bool newValue) {
//					titleName.update(
//						key,(value) => value,
//						ifAbsent: () => value,
//					);
				setState(() {
					_allValue = newValue;
				});
			},
			secondary: Text("Set Alerts"),
		);

		final keys = titleName.keys.toList();
		final checkBoxes = List<Widget>.generate(keys.length, (i){
			final key = keys[i];
			final _iconData = iconData[i];
			return CheckboxListTile(
				title: Text(key),
				value: titleName[key],
				activeColor: Colors.yellow,
				checkColor: Colors.black,
				onChanged: (bool value) {
					setState(() {
						titleName[key] = value;
					});
				},
				secondary: Icon(_iconData),
			);
		});

		return Column(
			children:
//			checkAll
			checkBoxes + <Widget>[
				ButtonBar(
					children: <Widget>[
						FlatButton(
							child: Text('CANCEL', style: TextStyle(fontSize: 18),),
							onPressed: cancelReturn,
							color: Colors.black54,
							textColor: Colors.white,
							splashColor: Colors.grey,
							padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
						),
						FlatButton(
							child: Text("OK", style: TextStyle(fontSize: 18),),
							onPressed: getCheckboxItems,
							color: Colors.black54,
							textColor: Colors.white,
							splashColor: Colors.grey,
							padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
								),
					],
				),
			]
		);
	}
}