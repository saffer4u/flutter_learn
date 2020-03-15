import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  static const routeName = '/Screen2';
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 2"),
      ),
      body: Center(child:Text(args),),
    );
  }
}
