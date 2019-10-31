import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/containers/list_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/dal/main_store.dart';
import 'package:flutter_app/componets/app_bar/app_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ScreenArguments args = ModalRoute.of(context).settings.arguments;
    final storeMain = Provider.of<MainStore>(context);

    return Scaffold(
        appBar: appBar(args.title, storeMain.router),
        body: Container(
          width: double.infinity,
          child: args.message == '85 W Portal Ave' ? _card2(args, context) : _card(args)
        ));
  }
}

Container _card(ScreenArguments args) => Container(
    color: Colors.black,
    child: Container(
      margin: EdgeInsets.all(20),
      // alignment: Alignment.center,
      height: 100,
      color: Colors.green,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          _imageCard(),
          _textCardComponent(args),
        ],
      ),
    )
);

Container _card2(ScreenArguments args, BuildContext context) => Container(
    child: Container(
      margin: EdgeInsets.all(24),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.black26),
        borderRadius: BorderRadius.all(Radius.circular(6)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 6)
        ]
      ),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            height: 200,
            color: Colors.purple,
            child: Icon(FontAwesomeIcons.kiwiBird),
            margin: EdgeInsets.only(bottom: 20),
          ),
          Text(
              'Flutter',
              style: TextStyle(color: Colors.black26, fontSize: 40)
          ),
          Text(
              'Learn how to align, position, and build layouts in Flutter with comparisons to CSS flexbox 💪📦 - they have more in common than you might think https://fireship.io/lessons/flutter-w...',
              style: TextStyle(color: Colors.black26)
          ),

          Container(
            margin: EdgeInsets.only(top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlatButton(
                    child: Text('click me'),
                    color: Colors.cyanAccent,
                  onPressed: () => {},
                ),
                FlatButton(
                  child: Text('click me'),
                  color: Colors.cyanAccent,
                  onPressed: () => {},
                ),
                FlatButton(
                  child: Text('click me'),
                  color: Colors.cyanAccent,
                  onPressed: () => {},
                ),
              ],
            ),
          )
        ],
      ),
    )
);

Container _imageCard() => Container(
  width: 100,
  height: 100,
  child: ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: Stack(
      children: <Widget>[
        // Center(child: CircularProgressIndicator()),
        FadeInImage.assetNetwork(
          placeholder: 'assets/images/loading.gif',
          image:
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
          fit: BoxFit.cover,
        )
      ],
    ),
  )
);

Expanded _textCardComponent(ScreenArguments args) => Expanded(
  flex: 1,
  child: Container(
      padding: EdgeInsets.only(left: 10),
      color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            args.message,
            style: TextStyle(color: Colors.black),
          ),
          Text(
            args.message,
            style: TextStyle(color: Colors.black),
          ),
          Text(
            args.message,
            style: TextStyle(color: Colors.black),
          ),
        ],
      )
  )
);