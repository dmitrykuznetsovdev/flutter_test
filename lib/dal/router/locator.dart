import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';

GetIt locator = GetIt.instance;

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routeName, {Object params}) {
    return navigatorKey.currentState.pushNamed(routeName);
  }

  bool goBack() {
    return navigatorKey.currentState.pop();
  }
}

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
}