import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_app/bloc/counter.bloc.dart';

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
    final CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text(this.title),
        ),
        body: BlocBuilder<CounterBloc, int>(builder: (context, count) {
          return Container(
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
                  Navigator.pushNamed(context, '/list');
                },
              ),
              RaisedButton(
                color: Colors.lightBlue,
                child: this._text('DARK'),
                onPressed: () {
                  Navigator.pushNamed(context, '/list');
                },
              ),
              SizedBox(height: 80,),
              Center(
                child: Text(
                  '$count',
                  style: TextStyle(fontSize: 44.0, color: Colors.green),
                ),
              ),
            ]),
          );
        }
        ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0),
            child: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                counterBloc.add(CounterEvent.increment(1));
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0),
            child: FloatingActionButton(
              child: Icon(Icons.remove),
              onPressed: () {
                counterBloc.add(CounterEvent.decrement(2));
              },
            ),
          ),
        ],
      ),
    );
  }
}
