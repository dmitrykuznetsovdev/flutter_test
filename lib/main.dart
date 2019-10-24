import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_app/screen/home.dart';
import 'package:flutter_app/screen/bar_screen.dart';
import 'package:flutter_app/screen/list_screen.dart';
import 'package:flutter_app/screen/product_detail.dart';
import 'package:flutter_app/screen/forms.dart';
import 'package:flutter_app/screen/native_forms.dart';
import 'package:flutter_app/bloc/counter.bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_app/bloc/transition_logger.dart';

void main() {
  BlocSupervisor.delegate = TransitionLogger();
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final CounterBloc _counterBloc = CounterBloc();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BlocProvider<CounterBloc>(
        builder: (context) => _counterBloc,
        child:  MaterialApp(
            title: 'Flutter Demo',
            theme:  ThemeData.light().copyWith(
              textTheme: TextTheme(
                body1: TextStyle(color: Colors.lightBlue),
              ),
            ),
            debugShowCheckedModeBanner: false,
            initialRoute: "/",
            routes: <String, WidgetBuilder>{
              '/': (BuildContext context) => MyHomePage(title: 'My home page'),
              '/bar': (BuildContext context) => BarScreen(),
              '/list': (BuildContext context) => ListScreen(),
              '/detail': (BuildContext context) => ProductDetailScreen(),
              '/forms': (BuildContext context) => FormsScreen(),
              '/native_forms': (BuildContext context) => NativeFormsScreen(),
            }
        ),
      ),
    );
  }
}
