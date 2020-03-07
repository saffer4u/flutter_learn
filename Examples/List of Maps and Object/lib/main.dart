
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


  List<Map<String,Object>> newList = [
    {
      'name': 'Aftab Alam',
      'cls': 'B.Tech',
      'date': DateTime.now(),
      'id': 12,
      'elements':['hello','world','i am','new'],
    },
    {
      'name': 'Shah Alam',
      'cls': 'B.Pharm',
      'date': DateTime.now(),
      'id': 13,
      'elements':['hello','world','i am','new'],
    }
  ];








  var _que = const [
    {
      'questionText': 'What is your favorite color',
      'answers': [
        {'text': 'Red', 'score': 5},
        {'text': 'Black', 'score': 10},
        {'text': 'White', 'score': 1},
        {'text': 'Blue', 'score': 7},
        {'text':'yellow','score':8},
      ]
    },
    {
      'questionText': 'What is your favorite animal',
      'answers': [
        {'text': 'Dog', 'score': 2},
        {'text': 'Elephent', 'score': 5},
        {'text': 'Cat', 'score': 4},
        {'text': 'Lion', 'score': 10},
        {'text': 'Jabra', 'score': 7}
      ]
    },
    {
      'questionText': 'What is your favorite Instructor',
      'answers': [
        {'text': 'Max', 'score': 7},
        {'text': 'Harry', 'score': 8},
        {'text': 'Saurabh', 'score': 4},
        {'text': 'Aftab', 'score': 1}
      ]
    },
    {
      'questionText': 'What is your favorite brand',
      'answers': [
        {'text': 'Apple', 'score': 5},
        {'text': 'Samsung', 'score': 7},
        {'text': 'Redmi', 'score': 3},
        {'text': 'Realme', 'score': 2}
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    
  
    return Scaffold(
        appBar: AppBar(
          title: Text('List of Maps and Object'),
        ),
        body: Column(
          children: <Widget>[

            //Dynamic print each element of List of Map
            ...(newList as List<Map<String,Object>>).map((lis) {


              return Column(
                children: <Widget>[
                  Card(
                    child: Column(
                      children: <Widget>[
                        Text(lis['name']),
                        Text(lis['cls']),
                        Text(lis['id'].toString()),
                        Text(lis['date'].toString()),

                        //Not clear, how to dynemically print every elements of list in a map.
                        Text(lis['elements'].toString()),
                      ],
                    ),
                  ),
                ],
              );
            }).toList(),






          Text(_que[1]['questionText']),

          ...(_que[1]['answers'] as List<Map<String,Object>>).map((ans){
            return Text(ans['text']);
          }).toList(),

          ],
        ));
  }
}
