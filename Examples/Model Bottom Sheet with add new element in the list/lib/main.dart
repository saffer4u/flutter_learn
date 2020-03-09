import 'package:flutter/material.dart';
import './transaction.dart';
import './newsheet.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomSheets(),
    );
  }
}

class BottomSheets extends StatefulWidget {
  @override
  _BottomSheetsState createState() => _BottomSheetsState();
}

class _BottomSheetsState extends State<BottomSheets> {
  final List<Transaction> elementList = [
    //List inserted here...
  ];

  void newTransaction(String tx1, String tx2) {
    final newList = Transaction(text1: tx1, text2: tx2);
    setState(() {
      elementList.add(newList);
    });

    //For testing...

    // for(var i = 0;i<elementList.length;i++){
    //   print(elementList[i].text1);
    //   print(elementList[i].text2);
    // }
  }

  //Show Model Bottom Sheet.
  void showSheet(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return GestureDetector(
            onTap: () {},
            child: Sheet(newTransaction),
            behavior: HitTestBehavior.translucent,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Model Bottom Sheet"),
      ),
      body: ListView.builder(
        itemCount: elementList.length,
        itemBuilder: (ctx, index) {
          return Card(
            elevation: 9,
            child: ListTile(
              leading: CircleAvatar(
                radius: 25,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: FittedBox(
                    child: Text('Tx'),
                  ),
                ),
              ),
              title: Text(elementList[index].text1),
              subtitle: Text(elementList[index].text2),
              trailing: IconButton(icon: Icon(Icons.delete_forever), onPressed: (){}),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(

          //onPressed takes a context for model Bottom sheet.
          onPressed: () => showSheet(context),
          child: Icon(Icons.arrow_upward)),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
