import 'package:flutter/material.dart';
import 'package:flutter_app/app/routes.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData.light().copyWith(
              textTheme: TextTheme(
                body1: TextStyle(color: Colors.lightBlue),
              ),
            ),
            debugShowCheckedModeBanner: false,
            initialRoute: "/",
            routes: routes(context)));
  }
}
