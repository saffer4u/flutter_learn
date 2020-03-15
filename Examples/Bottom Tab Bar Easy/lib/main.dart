import 'package:flutter/material.dart';
import './tab_screen.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (ctx)=> TabScreen(),
      }
    );
  }
}