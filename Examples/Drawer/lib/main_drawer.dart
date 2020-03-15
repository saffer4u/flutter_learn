import 'package:flutter/material.dart';
import 'package:flutter_learn/screen.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: <Widget>[
        Container(
          height: 150,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          color: Colors.pink,
          alignment: Alignment.centerLeft,
          child: Text(
            'Chose One',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
        ),

        ListTile(
          leading: Icon(
            Icons.settings_ethernet,
            size: 30,
          ),
          title: Text(
            'Main Screen',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          onTap: (){
            Navigator.of(context).pushNamed('/');
          },
        ),


        ListTile(
          leading: Icon(
            Icons.settings_remote,
            size: 30,
          ),
          title: Text(
            'Screen',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          onTap: (){
            Navigator.of(context).pushNamed(Screen.routeName);
          },
        ),

      ],
    ));
  }
}
