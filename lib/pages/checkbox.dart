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

	Map<String, bool> values = {
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
		Icons.timer,
		Icons.timer,
		Icons.timer,
		Icons.timer,
		Icons.timer,
		Icons.timer,
	];

	var tmpArray = [];

	getCheckboxItems() {
		values.forEach((key, value) {
			if (value == true) {
				tmpArray.add(key);
			}
		});
		// Printing all selected items on Terminal screen.
		print(tmpArray);
		// Here you will get all your selected Checkbox items.

		// Clear array after use.
		tmpArray.clear();
	}

	cancelCheckboxItems(){
		print(tmpArray);
		tmpArray.clear();
	}



	@override
	Widget build(BuildContext context) {
		final keys = values.keys.toList();
		final checkBoxes = List<Widget>.generate(keys.length, (i){
			final key = keys[i];
			final _iconData = iconData[i];
			return CheckboxListTile(
				title: Text(key),
				value: values[key],
				activeColor: Colors.yellow,
				checkColor: Colors.black,
				onChanged: (bool value) {
					setState(() {
						values[key] = value;
					});
				},
				secondary: Icon(_iconData),
			);
		});

		return Column(children:
			checkBoxes + <Widget>[
			ButtonBar(
				children: <Widget>[
					FlatButton(
						child: Text('CANCEL', style: TextStyle(fontSize: 18),),
						onPressed: cancelCheckboxItems,
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
		]);
	}
}