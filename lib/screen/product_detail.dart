import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screen/second_screen.dart';

class ProductDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ScreenArguments args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
        appBar: AppBar(title: Text(args.title)),
        body: Container(
          width: double.infinity,
          height: 250,
          decoration: BoxDecoration(color: Colors.red),
          child: _card(args)
        ));
  }
}

Card _card(ScreenArguments args) => Card(
    color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: <Widget>[
          _imageCard(),
          _textCard(args)
        ],
      ),
    )
);

ClipRRect _imageCard() => ClipRRect(
  borderRadius: BorderRadius.circular(10),
  child: Stack(
    children: <Widget>[
      Center(child: CircularProgressIndicator()),
      FadeInImage.assetNetwork(
        placeholder: 'assets/images/loading.gif',
        image:
        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
        fit: BoxFit.cover,
      )
    ],
  ),
);

Center _textCard(ScreenArguments args) => Center(
  child: Text(
    args.message,
    style: TextStyle(color: Colors.black),
  ),
);