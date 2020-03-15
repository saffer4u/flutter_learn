import 'package:flutter/material.dart';
import './new_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Routing',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {

  void _buttonPressed(BuildContext ctx){
    Navigator.of(ctx).push(MaterialPageRoute(builder:(_){
      return NewScreen('hello There');
    } ,),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('First Page'),
            RaisedButton(
              onPressed: () {_buttonPressed(context);},
              child: Text('Press Me'),
            ),
          ],
        ),
      ),
    );
  }
}
