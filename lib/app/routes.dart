import 'package:flutter/material.dart';
import 'package:flutter_app/containers/home/home.dart';
import 'package:flutter_app/containers/bar_screen.dart';
import 'package:flutter_app/containers/list_screen.dart';
import 'package:flutter_app/containers/product_detail.dart';
import 'package:flutter_app/containers/forms.dart';
import 'package:flutter_app/containers/native_forms/native_forms.dart';
import 'package:flutter_app/dal/router/constants.dart';

Map<String, WidgetBuilder>  routes(BuildContext context) => <String, WidgetBuilder>{
  HomeRoute: (BuildContext context) => MyHomePage(title: 'My home page'),
  BarRoute: (BuildContext context) => BarScreen(),
  ListRoute: (BuildContext context) => ListScreen(),
  DetailRoute: (BuildContext context) => ProductDetailScreen(),
  FormsRoute: (BuildContext context) => FormsScreen(),
  NativeFormsRoute: (BuildContext context) => NativeFormsScreen(),
};