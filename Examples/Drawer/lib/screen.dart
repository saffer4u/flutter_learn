import 'package:flutter/material.dart';
import './main_drawer.dart';

class Screen extends StatelessWidget {
  static const routeName = '/screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text('Screen'),
      ),
      body: Center(
        child: Text('Body of screen'),
      ),
    );
  }
}
