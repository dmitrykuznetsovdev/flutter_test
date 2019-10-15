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
          decoration: BoxDecoration(color: Colors.red),
          padding: EdgeInsets.all(5),
          child: _card(args)
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