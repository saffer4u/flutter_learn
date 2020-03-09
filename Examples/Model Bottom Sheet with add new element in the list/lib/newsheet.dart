import 'package:flutter/material.dart';

class Sheet extends StatefulWidget {
  final Function adInLis;
  Sheet(this.adInLis);
  @override
  _SheetState createState() => _SheetState();
}

class _SheetState extends State<Sheet> {
  final text1controller = TextEditingController();
  final text2controller = TextEditingController();



  void submitData(){
    final text1 = text1controller.text;
    final text2 = text2controller.text;

    widget.adInLis(
      text1,
      text2,
    );
    //Close sheet when submit.
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: "First input area"),
            controller: text1controller,
            onSubmitted:(_)=>submitData(),
          ),
          TextField(
            decoration: InputDecoration(labelText: "Second input area"),
            controller: text2controller,
            onSubmitted:(_)=> submitData(),
          ),
          RaisedButton(child: Text('Submit'),onPressed: submitData,),
        ],
      ),
    );
  }
}
