import 'package:flutter/material.dart';

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

	bool _allValue = false;

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
		final checkAll = Checkbox(
			tristate: false,
			value: _allValue,
			activeColor: Colors.yellow,
			checkColor: Colors.black,
			onChanged: (bool newValue) {
				titleName.forEach((key, value) {
					setState(() {
						titleName[key] = newValue;
					});
				});
				setState(() {
					_allValue = newValue;
				});
			},
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
//					判斷每一個子項目 結果是否相同, 全部為true or false -> 把tristate改成 null
					setState(() {
						titleName[key] = value;
					});
				},
				secondary: Icon(_iconData),
			);
		});

		return Column(
			children:
			<Widget>[
				Row(
					mainAxisAlignment: MainAxisAlignment.spaceBetween,
//				往內縮間距
					children: <Widget>[
						Container(
							child:Text("Set Alerts",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
						),
						Row(
								children: <Widget>[
								Text("ALL",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
								checkAll
							]
						),
					],
				)
			]
				 +
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