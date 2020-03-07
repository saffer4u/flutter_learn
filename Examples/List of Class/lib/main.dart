import 'package:flutter/material.dart';
import './a_class.dart';

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
  List<AClass> newList = [
    AClass(
      name: 'Aftab Alam',
      cls: 'B.Tech',
      date: DateTime.now(),
      id: 12,
    ),
    AClass(
      name: 'Shah Alam',
      cls: 'B.Pharm',
      date: DateTime.now(),
      id: 13,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    
    for(var i = 0;i<newList.length;i++){
      print(newList[i].name);
      print(newList[i].cls);
      print(newList[i].id);
      print(newList[i].date);

    }

    return Scaffold(
        appBar: AppBar(
          title: Text('List of Class'),
        ),
        body: Column(
          children: <Widget>[
            ...(newList as List<AClass>).map((lis) {


              return Column(
                children: <Widget>[
                  Card(
                    child: Row(
                      children: <Widget>[
                        Text(lis.name),
                        Text(lis.cls),
                        Text(lis.id.toString()),
                        Text(lis.date.toString()),
                      ],
                    ),
                  ),
                ],
              );
            
            
            }).toList(),
          ],
        ));
  }
}
