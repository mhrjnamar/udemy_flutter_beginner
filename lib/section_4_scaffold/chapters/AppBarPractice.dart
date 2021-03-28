import 'package:flutter/material.dart';

class AppBarPractice extends StatefulWidget {
  @override
  _AppBarPracticeState createState() => _AppBarPracticeState();
}

class _AppBarPracticeState extends State<AppBarPractice> {

  int _value = 0;

  void _add() => setState(() => _value++);
  void _remove() => setState(() => _value--);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Hello World"),
        backgroundColor: Colors.red,
        actions: [
            new IconButton(onPressed: _add, icon: new Icon(Icons.add)),
            new IconButton(onPressed: _remove, icon: new Icon(Icons.remove)),
        ],
      ),
      body: Text(_value.toString()),
    );
  }
}
