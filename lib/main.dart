import 'package:flutter/material.dart';
import 'package:flutter_app/app/app.dart';
import 'package:flutter_app/dal/router/locator.dart';
import 'package:flutter_app/dal/dialog/locator.dart';

void main() {
  setupRouterLocator();
  setupDialogLocator();
  return runApp(MyApp());
}
