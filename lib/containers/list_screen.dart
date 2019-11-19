import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/dal/main_store.dart';
import 'package:flutter_app/componets/app_bar/app_bar.dart';
import 'package:provider/provider.dart';

const double kColorItemHeight = 48.0;

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final storeMain = Provider.of<MainStore>(context);

    return Scaffold(
        appBar: AppBarComponent(
          title: 'List',
          router: storeMain.router,
        ),
        body: Scrollbar(child: _renderList(context)));
  }
}

Widget _renderList(context) => ListView(
      children: <Widget>[
        _tile('CineArts at the Empire', '85 W Portal Ave', Icons.theaters, context),
        _tile('The Castro Theater', '429 Castro St', Icons.theaters, context),
        _tile('Alamo Drafthouse Cinema', '2550 Mission St', Icons.theaters, context),
        _tile('Roxie Theater', '3117 16th St', Icons.theaters, context),
        _tile('United Artists Stonestown Twin', '501 Buckingham Way',
            Icons.theaters, context),
        _tile('AMC Metreon 16', '135 4th St #3000', Icons.theaters, context),
        Divider(),
        _tile('Kescaped_code#39;s Kitchen', '757 Monterey Blvd',
            Icons.restaurant, context),
        _tile('Emmyescaped_code#39;s Restaurant', '1923 Ocean Ave',
            Icons.restaurant, context),
        _tile('Chaiya Thai Restaurant', '272 Claremont Blvd', Icons.restaurant, context),
        _tile('La Ciccia', '291 30th St', Icons.restaurant, context),
      ],
    );

ListTile _tile(String title, String subtitle, IconData icon, [BuildContext context]) => ListTile(
    title: Text(title,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.black,
          fontSize: 20,
        )
    ),
    subtitle: Text(subtitle),
    leading: Icon(icon, color: Colors.blue),
    onTap: () {
      Navigator.pushNamed(
          context,
          '/detail',
          arguments: ScreenArguments(
            title,
            subtitle,
          ),
      );
    }
);

class ScreenArguments {
  final String title;
  final String message;

  ScreenArguments(this.title, this.message);
}