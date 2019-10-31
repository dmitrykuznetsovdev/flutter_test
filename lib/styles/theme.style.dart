import 'package:flutter/material.dart';

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
    primaryColor: Colors.lightBlue,
    textTheme: TextTheme(
      body1: TextStyle(color: Colors.white),
    ),
  ),
};