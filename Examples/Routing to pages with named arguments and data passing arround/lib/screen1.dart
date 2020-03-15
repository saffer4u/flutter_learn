import 'package:flutter/material.dart';
import './screen2.dart';

class Screen1 extends StatelessWidget {
  final String passedString;
  Screen1(this.passedString);

  void _buttonPressed(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(Screen2.routeName, arguments: 'Passed String');
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 1'),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Text(passedString),
          ),
          RaisedButton(
            onPressed: () => _buttonPressed(context),
            child: Text("Screen 2"),
          ),
          Center(child:Text(args)),
        ],
      ),
    );
  }
}
