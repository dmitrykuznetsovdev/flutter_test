import 'package:flutter/material.dart';
import 'package:flutter_app/app/routes.dart';
import 'package:provider/provider.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_app/dal/main_store.dart';
import 'package:flutter_app/styles/theme.style.dart';


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
