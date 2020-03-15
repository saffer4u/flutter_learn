

import 'package:flutter/material.dart';
import './tab1.dart';
import './tab2.dart';
import './tab3.dart';

// For AppBar on top we don't need a stateful widget.
class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {

  final List<Widget> pages = [
    Tab1(),
    Tab2(),
    Tab3(),
  ];

  int selectedPageIndex = 0;
  String titles='Screen One' ;

  void selectPage (int index){
    setState(() {
      selectedPageIndex =index;
      switch(index){
        case 0:
        {titles = 'Screen one';
        break;}
        case 1:
        {titles = 'Screen Two';
        break;}
        case 2:
        {titles = 'Screen Three';
        break;}
        default:
        titles = 'No String';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titles),
      ),
      body: pages[selectedPageIndex],


      bottomNavigationBar: BottomNavigationBar(
        onTap: selectPage,

        // Styling.
        
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black,


        currentIndex: selectedPageIndex,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            backgroundColor:Colors.pink,
            icon: Icon(Icons.people),
            title: Text('Tab1'),
          ),
          BottomNavigationBarItem(
            backgroundColor:Colors.pink,
            icon: Icon(Icons.perm_camera_mic),
            title: Text('Tab2'),
          ),
          BottomNavigationBarItem(
            backgroundColor:Colors.pink,
            icon: Icon(Icons.perm_phone_msg),
            title: Text('Tab3'),
          ),
        ],
      ),
    );
  }
}
