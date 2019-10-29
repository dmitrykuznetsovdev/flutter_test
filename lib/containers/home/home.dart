import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_app/dal/counter/counter.dart';
import 'package:flutter_app/dal/main_store.dart';
import 'package:provider/provider.dart';

final counter = Counter();

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

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

  Widget _text(String text) => Text(text, style: _textStyle);

  @override
  Widget build(BuildContext context) {
    // final storeSettings = Provider.of<Settings>(context);
    // final storeCounter = Provider.of<Counter>(context);
    final storeMain = Provider.of<MainStore>(context);

    return Observer(
        builder: (_) => Scaffold(
          appBar: AppBar(
            title: Text(this.title),
          ),
          body: Container(
            padding: EdgeInsets.all(10),
            color: Colors.black12,
            child: ListView(children: <Widget>[
              RaisedButton(
                color: Colors.lightBlue,
                child: this._text('FormBuilder'),
                onPressed: () {
                  Navigator.pushNamed(context, '/forms');
                },
              ),
              RaisedButton(
                color: Colors.lightBlue,
                child: this._text('Native Forms'),
                onPressed: () {
                  Navigator.pushNamed(context, '/native_forms');
                },
              ),
              RaisedButton(
                color: Colors.lightBlue,
                child: this._text('List'),
                onPressed: () {
                  Navigator.pushNamed(context, '/list');
                },
              ),
              RaisedButton(
                color: Colors.lightBlue,
                child: this._text('LIGHT'),
                onPressed: () {
                  storeMain.settings.toggleDarkModeUser(false);
                },
              ),
              RaisedButton(
                color: Colors.lightBlue,
                child: this._text('DARK'),
                onPressed: () {
                  storeMain.settings.toggleDarkModeUser(true);
                },
              ),
              SizedBox(
                height: 80,
              ),
              Center(
                child: Text(
                  '${storeMain.counter.value}',
                  style: TextStyle(fontSize: 44.0, color: Colors.green),
                ),
              ),
              Center(
                child: Text(
                  '${storeMain.settings.isDarkModeUser ? 'DARK' : 'LIGTH'}',
                  style: TextStyle(fontSize: 44.0, color: Colors.green),
                ),
              )
            ]),
          ),
          floatingActionButton: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: FloatingActionButton(
                  child: Icon(Icons.add),
                  onPressed: storeMain.counter.increment,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: FloatingActionButton(
                  child: Icon(Icons.remove),
                  onPressed: storeMain.counter.decrement,
                ),
              ),
            ],
          ),
        )
    );
  }
}
