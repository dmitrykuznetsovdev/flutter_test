import 'package:flutter/material.dart';
import 'package:giffy_dialog/giffy_dialog.dart';


class DialogManager extends StatelessWidget {
  final String title, description, buttonText;
  final Image image;

  DialogManager({
    @required this.title,
    @required this.description,
    @required this.buttonText,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return NetworkGiffyDialog(
      image: Image.network(
        "https://raw.githubusercontent.com/Shashank02051997/FancyGifDialog-Android/master/GIF's/gif14.gif",
        fit: BoxFit.cover,
      ),
      entryAnimation: EntryAnimation.LEFT_RIGHT,
      title: Text(
        this.title,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 22.0, fontWeight: FontWeight.w600),
      ),
      description: Text(
        this.description,
        textAlign: TextAlign.center,
      ),
      onOkButtonPressed: () {

      },
    );
  }
}