import 'package:flutter/material.dart';
import './screen.dart';
import './main_drawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer',
      routes: {
        '/': (_) => MainScreen(),
        Screen.routeName:(_)=>Screen(),
      },
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text('Drawer App'),
      ),
      body: Center(
        child: Text('Main Screen'),
      ),
    );
  }
}
