import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/dal/router/router.dart';

AppBar appBar(String title, RouterStore router, [bool isShowBack = true]) => AppBar(
      title: Text(title),
      leading: isShowBack ? _preview(router) : Container(
        width: 20,
        height: 20,
        child: Text(''),
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.add_alert),
          tooltip: 'Alert',
          onPressed: () {
            // scaffoldKey.currentState.showSnackBar(snackBar);
          },
        ),
        IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Menu',
          onPressed: () {
            // scaffoldKey.currentState.showSnackBar(snackBar);
          },
        )
      ],
    );

IconButton _preview(RouterStore router) => IconButton(
  icon: const Icon(Icons.navigate_before),
  tooltip: 'Preview Page',
  onPressed: () {
    router.pop();
  },
);