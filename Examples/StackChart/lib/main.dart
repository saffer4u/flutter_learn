import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Glist(),
    );
  }
}

class Glist extends StatefulWidget {
  @override
  _GlistState createState() => _GlistState();
}

class _GlistState extends State<Glist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Date Format'),
      ),
      body: 
      LayoutBuilder(builder: (ctx , Constrains){
        return Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 5, color: Colors.pink),
              borderRadius: BorderRadius.circular(20),
              color: Colors.pink,
            ),
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(6),
            height: 340,
            width: 80,
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 4,
                        color: Colors.cyan,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                ),
                FractionallySizedBox(
                  heightFactor: 0.9,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 4,
                          color: Colors.cyan,
                        ),
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
      },),
      
      
    );
  }
}
