import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		Widget divider1=Divider(color: Colors.blue,);
		Widget divider2=Divider(color: Colors.green);
		return ListView.separated(
			itemCount: 10,
			itemBuilder: (BuildContext context, int index) {
				return ListTile(title: Text("$index"));
			},
			separatorBuilder: (BuildContext context, int index) {
//				return index%2==0?divider1:divider2;
			return SinglePlayerInfo();
			},
		);
	}
}

class SinglePlayerInfo extends StatefulWidget {
  @override
  _SinglePlayerInfoState createState() => _SinglePlayerInfoState();
}

class _SinglePlayerInfoState extends State<SinglePlayerInfo> {
  @override
  Widget build(BuildContext context) {
    return Card(
		    color: Colors.grey[900],
		    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
		    child: Padding(
			    padding: const EdgeInsets.all(8.0),
				  child: Column(
					  children: <Widget>[
						  Row(
							  crossAxisAlignment: CrossAxisAlignment.center,
							  mainAxisAlignment: MainAxisAlignment.spaceBetween,
							  children: <Widget>[Text('qqq'), Text('www'), Text('eee')],
						  ),
						  Row(
							  crossAxisAlignment: CrossAxisAlignment.center,
							  mainAxisAlignment: MainAxisAlignment.spaceBetween,
			          children: <Widget>[Text('AAA'), Text('BBB'), Text('CCC')],
			        ),
						  Row(
							  crossAxisAlignment: CrossAxisAlignment.center,
							  mainAxisAlignment: MainAxisAlignment.spaceBetween,
							  children: <Widget>[Text('MATCHES'), Text('GOALS'), Text('ASSISTS')],
						  ),
					  ],
			    )
		    )
    );
  }
}
