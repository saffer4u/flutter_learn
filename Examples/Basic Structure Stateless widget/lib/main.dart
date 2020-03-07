import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hello world",
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(child: Text("Column widget")),
          Container(
            margin: EdgeInsets.all(20),
            child: Card(
              elevation: 8,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("This is a card"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
