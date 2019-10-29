import 'package:flutter/material.dart';
import 'package:flutter_app/app/routes.dart';
import 'package:provider/provider.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_app/dal/main_store.dart';

final theme = {
  'ligth': ThemeData.light().copyWith(
    brightness: Brightness.light,
    primaryColor: Colors.lightBlue,
    textTheme: TextTheme(
      body1: TextStyle(color: Colors.lightBlue),
    ),
  ),
  'dark': ThemeData.dark().copyWith(
    brightness: Brightness.dark,
    primaryColor: Colors.white,
    textTheme: TextTheme(
      body1: TextStyle(color: Colors.white),
    ),
  ),
};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [Provider<MainStore>(builder: (_) => MainStore())],
        child: Consumer<MainStore>(
            builder: (_, store, __) => Observer(
                builder: (_) => Container(
                    child: MaterialApp(
                        title: 'Flutter Demo',
                        theme: store.settings.isDarkModeUser ? theme['dark']: theme['light'],
                        debugShowCheckedModeBanner: false,
                        initialRoute: "/",
                        routes: routes(context)
                    )
                )
            )
        )
    );
  }
}
