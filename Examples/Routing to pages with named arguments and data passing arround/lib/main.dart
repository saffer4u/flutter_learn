

import 'package:flutter/material.dart';
import 'screen1.dart';
import './screen2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Routing',
      theme: ThemeData(primarySwatch: Colors.blue),
      
      initialRoute: '/', // This is default value;
      routes: {
        '/':(_)=>FirstPage(),
        '/Screen1':(_)=>Screen1('Passed from Widget positional argument'),
        Screen2.routeName :(_)=>Screen2(),
        // Define a route name in order to avoid typo.
      },
    );
  }
}

class FirstPage extends StatelessWidget {

  void _buttonPressed(BuildContext ctx){
    Navigator.of(ctx).pushNamed('/Screen1',arguments: 'Passed String From argument');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Main Page'),
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
