import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/dal/router/router.dart';

class AppBarComponent extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final RouterStore router;
  final bool isShowBack;
  final Function showDialogPopup;

  AppBarComponent({Key key,
      @required this.title,
      @required this.router,
      this.isShowBack,
      this.showDialogPopup
  }) : super(key: key);

  @override
  Size get preferredSize {
    return new Size.fromHeight(40.0);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppBar(
      title: Text(title),
      leading: isShowBack is bool
          ? _preview(router)
          : _preview(router),
      actions: <Widget>[
        if (this.showDialogPopup is Function)
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Alert',
            onPressed: () => showDialogPopup(context),
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
  }

  IconButton _preview(RouterStore router) => IconButton(
        icon: const Icon(Icons.navigate_before),
        tooltip: 'Preview Page',
        onPressed: () {
          router.pop();
        },
      );
}
