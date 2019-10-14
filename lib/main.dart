import 'package:flutter/material.dart';
import 'package:flutter_app/screen/home.dart';
import 'package:flutter_app/screen/first_screen.dart';
import 'package:flutter_app/screen/second_screen.dart';
import 'package:flutter_app/screen/product_detail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme:  ThemeData.light().copyWith(
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.lightBlue),
        ),
      ),
      initialRoute: "/second",
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => MyHomePage(title: 'My home page'),
        '/first': (BuildContext context) => FirstScreen(),
        '/second': (BuildContext context) => SecondScreen(),
        '/detail': (BuildContext context) => ProductDetailScreen(),
      }
    );
  }
}
