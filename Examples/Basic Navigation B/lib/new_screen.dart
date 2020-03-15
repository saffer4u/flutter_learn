import 'package:flutter/material.dart';

class NewScreen extends StatelessWidget {
  final String passedString;
  NewScreen(this.passedString);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Navigation'),
        ),
        body: Column(children: <Widget>[
          Center(child:Text(passedString),)
        ],),
      );
  }
}