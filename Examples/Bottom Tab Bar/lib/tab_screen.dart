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
  final List<Map<String, Object>> pages = [
    {'page': Tab1(), 'title': 'Screen One'},
    {'page': Tab2(), 'title': 'Screen Two'},
    {'page': Tab3(), 'title': 'Screen Three'},
  ];

  int selectedPageIndex = 0;

  void selectPage(int index) {
    setState(() {
      selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pages[selectedPageIndex]['title']),
      ),
      body: pages[selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectPage,

        // Styling.

        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black,

        currentIndex: selectedPageIndex,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.pink,
            icon: Icon(Icons.people),
            title: Text('Tab1'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.pink,
            icon: Icon(Icons.perm_camera_mic),
            title: Text('Tab2'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.pink,
            icon: Icon(Icons.perm_phone_msg),
            title: Text('Tab3'),
          ),
        ],
      ),
    );
  }
}
