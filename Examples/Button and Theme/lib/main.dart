import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.purple,
        textTheme: ThemeData.light().textTheme.copyWith(
              title: TextStyle(
                fontSize: 30,
                color: Colors.cyan,
                fontWeight: FontWeight.bold,
              ),
              button: TextStyle(color: Colors.blue),
            ),

        appBarTheme: AppBarTheme(
          textTheme: ThemeData.light().textTheme.copyWith(
            title: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.brown,
              fontSize: 34,
            ),
          ),
        ),

      ),
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
          "Working with Theme",
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Text(
            'Text Theme',
            style: Theme.of(context).textTheme.title,
          ),
          FlatButton(
            onPressed: () {},
            child: Text('FlatButton'),
            textColor: Theme.of(context).textTheme.button.color,
          ),
          RaisedButton(
            onPressed: () {},
            child: Text('RisedButton'),
            textColor: Theme.of(context).textTheme.button.color,
            color: Theme.of(context).primaryColor,
          ),
          SizedBox(
            height: 24,
          ),
          Text('FloatingActionButton',style: TextStyle(fontSize: 34,color: Colors.blue),),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        elevation: 8,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
