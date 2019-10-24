import 'package:flutter/material.dart';
import 'package:flutter_app/containers/home/home.dart';
import 'package:flutter_app/containers/bar_screen.dart';
import 'package:flutter_app/containers/list_screen.dart';
import 'package:flutter_app/containers/product_detail.dart';
import 'package:flutter_app/containers/forms.dart';
import 'package:flutter_app/containers/native_forms.dart';

Map<String, WidgetBuilder>  routes(BuildContext context) => <String, WidgetBuilder>{
  '/': (BuildContext context) => MyHomePage(title: 'My home page'),
  '/bar': (BuildContext context) => BarScreen(),
  '/list': (BuildContext context) => ListScreen(),
  '/detail': (BuildContext context) => ProductDetailScreen(),
  '/forms': (BuildContext context) => FormsScreen(),
  '/native_forms': (BuildContext context) => NativeFormsScreen(),
};