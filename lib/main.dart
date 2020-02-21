import 'package:flutter/material.dart';  // 載入 material 函式庫(包含material的原件)
import 'dart:math';

void main() => runApp(MaterialApp(
  home: new HomePage3(),
));  // main 是 Dart 程式，最一開始的進入點

// runApp 是 Flutter 程式進入點，若沒有載入上方 material 函式庫，將會不認識 runApp。
// 放在 Center 容器裡面 Text 的元件，將會被放置在畫面的正中間

class HomePage extends StatelessWidget {
  //  狀態不會被改變, 畫面不更新, 降低系統的消耗
  //  不能return null

  @override
  Widget build(BuildContext context) {
//    回傳一個空的架構
    return Scaffold(
      appBar: new AppBar(
        title: Text("Grabee's Flutter App"),),
      body: Row(
        children: <Widget>[
          Container(
            color: Colors.redAccent,
            width: 100.0,
            height: 100.0,
          ),
          Container(
            margin: EdgeInsets.only(left:10.0),
            color: Colors.lightBlueAccent,
            width: 100.0,
            height: 100.0,
          ),
        ],
      )
    );
  }
}

//  需要寫兩個Class: 一個寫State, 一個寫Widget-------------------

//StatefulWidget 監控State有沒有被改變 -> 整個Scaffold(就是一個page的widget)被刷新

class HomePage2 extends StatefulWidget {
  @override
  HomePage2State createState() => HomePage2State();
}

class HomePage2State extends State<HomePage2> {
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons. forward),
          onPressed: () {
            setState(() {
            });
          },
        ),
          appBar: new AppBar(
            title: Text("Grabee's Flutter App"),),
          body: Row(
            children: <Widget>[
              Container(
                color: getColor(),
                width: 100.0,
                height: 100.0,
              ),
              Container(
                margin: EdgeInsets.only(left:10.0),
                color: getColor(),
                width: 100.0,
                height: 100.0,
              ),
            ],
          )
      );
    }
    Color getColor() {
    return Color.fromARGB(255, Random().nextInt(255), Random().nextInt(255), Random().nextInt(255));
  }
}

//  TextField、InputDecoration、IconButton、FocusedNode
class HomePage3 extends StatefulWidget {
  @override
  HomePage3State createState() => HomePage3State();
}

class HomePage3State extends State<HomePage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text("TextField Demo"),),
        body: TextField(decoration: new InputDecoration(
          icon: Icon(Icons.calendar_today),
          labelText: '日期',
          suffix: Icon(Icons.remove),
            suffixIcon:  Icon(Icons.close),
        )),
    );
  }
}
//class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);
//
//  // This widget is the home page of your application. It is stateful, meaning
//  // that it has a State object (defined below) that contains fields that affect
//  // how it looks.
//
//  // This class is the configuration for the state. It holds the values (in this
//  // case the title) provided by the parent (in this case the App widget) and
//  // used by the build method of the State. Fields in a Widget subclass are
//  // always marked "final".
//
//  final String title;
//
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage> {
//  int _counter = 0;
//
//  void _incrementCounter() {
//    setState(() {
//      // This call to setState tells the Flutter framework that something has
//      // changed in this State, which causes it to rerun the build method below
//      // so that the display can reflect the updated values. If we changed
//      // _counter without calling setState(), then the build method would not be
//      // called again, and so nothing would appear to happen.
//      _counter++;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    // This method is rerun every time setState is called, for instance as done
//    // by the _incrementCounter method above.
//    //
//    // The Flutter framework has been optimized to make rerunning build methods
//    // fast, so that you can just rebuild anything that needs updating rather
//    // than having to individually change instances of widgets.
//    return Scaffold(
//      appBar: AppBar(
//        // Here we take the value from the MyHomePage object that was created by
//        // the App.build method, and use it to set our appbar title.
//        title: Text(widget.title),
//      ),
//      body: Center(
//        // Center is a layout widget. It takes a single child and positions it
//        // in the middle of the parent.
//        child: Column(
//          // Column is also a layout widget. It takes a list of children and
//          // arranges them vertically. By default, it sizes itself to fit its
//          // children horizontally, and tries to be as tall as its parent.
//          //
//          // Invoke "debug painting" (press "p" in the console, choose the
//          // "Toggle Debug Paint" action from the Flutter Inspector in Android
//          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//          // to see the wireframe for each widget.
//          //
//          // Column has various properties to control how it sizes itself and
//          // how it positions its children. Here we use mainAxisAlignment to
//          // center the children vertically; the main axis here is the vertical
//          // axis because Columns are vertical (the cross axis would be
//          // horizontal).
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Text(
//              'You have pushed the button this many times:',
//            ),
//            Text(
//              '$_counter',
//              style: Theme.of(context).textTheme.headline4,
//            ),
//          ],
//        ),
//      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: _incrementCounter,
//        tooltip: 'Increment',
//        child: Icon(Icons.add),
//      ), // This trailing comma makes auto-formatting nicer for build methods.
//    );
//  }
//}
