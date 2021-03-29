import 'package:flutter/material.dart';
import 'dart:async';

class SimpleDialogPractice extends StatefulWidget {
  @override
  _SimpleDialogPracticeState createState() => _SimpleDialogPracticeState();
}


enum Answers{YES, NO, MAYBE}

class _SimpleDialogPracticeState extends State<SimpleDialogPractice> {
  String _value ='';

  void _setValue(String value) => setState(() => _value= value);
  Future _askUser()  async {
    switch(
    await showDialog(context: context,
        builder: (BuildContext context) => SimpleDialog(
          title: Text("Do you like flutter?"),
          children: [
            SimpleDialogOption(
              child: Text('Yes!!!'),
              onPressed: () => Navigator.pop(context, Answers.YES),
            ),
            SimpleDialogOption(
              child: Text('No :('),
              onPressed: () => Navigator.pop(context, Answers.NO),
            ),
            SimpleDialogOption(
              child: Text('Maybe :'),
              onPressed: () => Navigator.pop(context, Answers.MAYBE),
            ),
          ],

        ) )
    ){
      case Answers.YES:
        _setValue('Yes');
        break;
      case Answers.NO:
        _setValue('No');
        break;
      case Answers.MAYBE:
        _setValue('Maybe');
        break;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Dialog"),
      ),
      body: Column(
        children: [
          Text(_value),

          ElevatedButton(
          onPressed: _askUser,
          child: Text("Show simple dialog"),
        ),

      ]
      ),
    );
  }
}
