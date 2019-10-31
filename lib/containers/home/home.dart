import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_app/dal/counter/counter.dart';
import 'package:flutter_app/dal/main_store.dart';
import 'package:flutter_app/dal/router/constants.dart';
import 'package:flutter_app/componets/app_bar/app_bar.dart';
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
    final storeView = storeMain.viewStore;

    return Observer(
        builder: (_) => Scaffold(
          appBar: appBar(this.title, storeMain.router, false),
          body: Container(
            padding: EdgeInsets.all(10),
            color: Colors.black12,
            child: ListView(children: <Widget>[
              RaisedButton(
                color: Colors.lightBlue,
                child: this._text('FormBuilder'),
                onPressed: () {
                  storeMain.router.pushNamed(FormsRoute);
                },
              ),
              RaisedButton(
                color: Colors.lightBlue,
                child: this._text('Native Forms'),
                onPressed: () {
                  storeMain.router.pushNamed(NativeFormsRoute);
                },
              ),
              RaisedButton(
                color: Colors.lightBlue,
                child: this._text('List'),
                onPressed: () {
                  storeMain.router.pushNamed(ListRoute);
                },
              ),
              RaisedButton(
                color: Colors.lightBlue,
                child: this._text('LIGHT'),
                onPressed: () {
                  storeMain.settingsStore.toggleDarkModeUser(false);
                },
              ),
              RaisedButton(
                color: Colors.lightBlue,
                child: this._text('DARK'),
                onPressed: () {
                  storeMain.settingsStore.toggleDarkModeUser(true);
                },
              ),
              SizedBox(
                height: 80,
              ),
              Center(
                child: Text(
                  '${storeMain.counterStore.value}',
                  style: TextStyle(fontSize: 44.0, color: Colors.green),
                ),
              ),
              Center(
                child: Text(
                  '${storeMain.settingsStore.isDarkModeUser ? 'DARK' : 'LIGTH'}',
                  style: TextStyle(fontSize: 44.0, color: Colors.green),
                ),
              ),
              Center(
                child: Text(
                  '${storeView.nativeForms.getFullName}',
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
                child: IconButton(
                  icon: Icon(Icons.volume_up),
                  tooltip: '+',
                  onPressed: storeMain.counterStore.increment,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: IconButton(
                  icon: Icon(Icons.volume_down),
                  tooltip: '-',
                  onPressed: storeMain.counterStore.decrement,
                ),
              ),
            ],
          ),
        )
    );
  }
}
