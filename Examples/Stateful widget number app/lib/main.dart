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

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int value = 0;

  void _add(){
    setState(() {
    value+=1;  
    });
  }

  void _sub(){
    setState(() {  
    value-=1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Widget'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "Dynamic Number",
            style: TextStyle(fontSize: 32),
          ),
          Text(
            value.toString(),
            style: TextStyle(fontSize: 70),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FloatingActionButton(
                onPressed: _add,
                child: Icon(Icons.add),
              ),
              SizedBox(
                width: 50,
              ),
              FloatingActionButton(
                onPressed: _sub,
                child: Text(
                  '-',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
