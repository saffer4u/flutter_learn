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
  String  tabTitle = 'Tab Screen One';

    void onTapController(index){
      setState(() {
        if(index==0){
        tabTitle='Tab Screen One';
      }
      else if(index==1){
        tabTitle='Tab Screen Two';
      }
      else{
        tabTitle = 'Tab Screen Three';
      }
      });
    }

  @override
  Widget build(BuildContext context) {
    
    return DefaultTabController(
        length: 3,
        initialIndex: 0,
          child: Scaffold(
        appBar: AppBar(
          title: Text(tabTitle),
          bottom: TabBar(
            onTap: (ind)=>onTapController(ind),
            tabs: <Widget>[
              Tab(
              
                icon: Icon(Icons.open_with),
                child: Text('Tab 1'),
              ),
              Tab(
                icon: Icon(Icons.pages),
                child: Text('Tab 2'),
              ),
              Tab(
                icon: Icon(Icons.people),
                child: Text('Tab 3'),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
          Tab1(),
          Tab2(),
          Tab3(),
        ],),
      ),
    );
  }
}
