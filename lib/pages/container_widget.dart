import 'package:flutter/material.dart';
import 'package:menu_button/menu_button.dart';

//class ContainerWidget extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//	  return Center(
//		  child: Text('Aloha~'),
//	  );
//  }
//}

class ContainerWidget extends StatefulWidget {
  @override
  _ContainerWidgetState createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  String selectedKey;

  List<String> keys = [
    'Low',
    'Medium',
    'High',
  ];

  @override
  void initState() {
    selectedKey = keys[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Widget button = SizedBox(
      width: 120,
      height: 40,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 11),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Flexible(
              child: Text(
                selectedKey,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(
                width: 12,
                height: 17,
                child: FittedBox(
                    fit: BoxFit.fill,
                    child: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.grey,
                    ))),
          ],
        ),
      ),
    );

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          MenuButton(
            child: button,
            items: keys,
            scrollPhysics: AlwaysScrollableScrollPhysics(),
            topDivider: true,
            itemBuilder: (value) => Container(
                height: 40, alignment: Alignment.centerLeft, padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16), child: Text(value)),
            toggledChild: Container(
              color: Colors.white,
              child: button,
            ),
            divider: Container(
              height: 1,
              color: Colors.grey,
            ),
            onItemSelected: (value) {
              setState(() {
                selectedKey = value;
              });
              print("我選-------: $value");
            },
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[300]), borderRadius: const BorderRadius.all(Radius.circular(3.0)), color: Colors.white),
            onMenuButtonToggle: (isToggle) {
              print('選單打開-------: $isToggle');
            },
          ),
        ],
      ),
    );
  }
}
