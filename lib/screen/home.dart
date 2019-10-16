import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  List<Map> buttonList = [
    {
      'title': 'list',
      'url': '/list',
    },
    {
      'title': 'bar',
      'url': '/bar',
    }
  ];

  TextStyle _textStyle = TextStyle(
    fontWeight: FontWeight.w500,
    color: Colors.white,
    fontSize: 20,
  );

  Widget _text(String text) => Text(
      text,
      style: _textStyle
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        color: Colors.black12,
        child: ListView(
            children: <Widget>[
              RaisedButton(
                color: Colors.lightBlue,
                child: this._text('Forms'),
                onPressed: () {
                  Navigator.pushNamed(context, '/forms');
                },
              ),
              RaisedButton(
                color: Colors.lightBlue,
                child: this._text('List'),
                onPressed: () {
                  Navigator.pushNamed(context, '/list');
                },
              )
            ]),
      ),
    );
  }
}
