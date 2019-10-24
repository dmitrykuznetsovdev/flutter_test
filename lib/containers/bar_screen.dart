import 'package:flutter/material.dart';

final styleContainer = BoxDecoration(
  color: Colors.blue[500],
  gradient: new LinearGradient(
    colors: [Colors.red, Colors.cyan],
  ),
  border: Border(
    top: BorderSide(width: 1.0, color: Color(0xFFFFDFDFDF)),
    left: BorderSide(width: 1.0, color: Color(0xFFFFDFDFDF)),
    right: BorderSide(width: 1.0, color: Color(0xFFFF7F7F7F)),
    bottom: BorderSide(width: 1.0, color: Color(0xFFFF7F7F7F)),
  ),
);

class BarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("first screen"), centerTitle: true),
        body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            decoration: styleContainer,
            child: Row(
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: IconButton(
                      icon: Icon(Icons.menu),
                      tooltip: 'Navigation menu',
                      onPressed: null, // null disables the button
                    )),
                Expanded(
                    flex: 6,
                    child: RaisedButton(
                      child: Text("RaisedButton"),
                      onPressed: () {
                        print("onPressed");
                        Navigator.pushNamed(context, '/second');
                      },
                    )),
                Expanded(
                  flex: 1,
                  child: IconButton(
                    icon: Icon(Icons.search),
                    tooltip: 'Search',
                    onPressed: null,
                  ),
                ),
              ],
            )));
  }
}
