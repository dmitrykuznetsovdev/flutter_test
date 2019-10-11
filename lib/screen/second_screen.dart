import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("SECOND SCRREEN")
      ),
      body: Center(
        child: RaisedButton(
          child: Text("RaisedButton"),
          onPressed: (){
            print("onPressed SECOND SCRREEN");
            Navigator.pushNamed(context, '/');
          },
        )
      )
    );
  }
}