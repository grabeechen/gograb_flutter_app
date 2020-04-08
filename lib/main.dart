import 'package:flutter/material.dart';
import './pages/home.dart';
import './pages/container_widget.dart';
import './pages/common_widget.dart';
import './pages/layout_widget.dart';

void main() => runApp(
      new MaterialApp(
        home: new MyApp(),
      ),
    );

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //目前選擇頁索引值
  int _currentIndex = 0; //預設值

  final pages = [ContainerWidget(), CommonWidget(), LayoutWidget()];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Grabee's flutter studio"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: new Text(
                "Grabee's studio",
              ),
              accountEmail: new Text(
                "grabee@gmail.com",
              ),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new AssetImage('assets/images/g_icon.png'),
              ),
            ),
            //選單
            ListTile(
              leading: new CircleAvatar(child: Icon(Icons.chrome_reader_mode)),
              title: Text('Container'),
              onTap: () {
                _onItemClick(0);
              },
            ),
            ListTile(
              leading: new CircleAvatar(child: Icon(Icons.code)),
              title: Text('Common'),
              onTap: () {
                _onItemClick(1);
              },
            ),
            ListTile(
              leading: new CircleAvatar(child: Icon(Icons.computer)),
              title: Text('Layout'),
              onTap: () {
                _onItemClick(2);
              },
            ),
          ],
        ),
      ),
      body: pages[_currentIndex],
    );
  }

  void _onItemClick(int index) {
    setState(() {
      _currentIndex = index;
      Navigator.of(context).pop();
    });
  }
}
