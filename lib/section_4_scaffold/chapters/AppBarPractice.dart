

import 'package:flutter/material.dart';

class AppBarPractice extends StatefulWidget {
  @override
  _AppBarPracticeState createState() => _AppBarPracticeState();
}

class _AppBarPracticeState extends State<AppBarPractice> {

  int _value = 0;

  void _add() => setState(() => _value++);
  void _remove() => setState(() => _value--);

  String _floatingActionButtonValue = '';
  void _onClicked() => setState(() => _floatingActionButtonValue = new DateTime.now().toString());

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
      drawer: Drawer(
        child: Container(
          padding: new EdgeInsets.all(32),
          child: Column(
            children: [
              new Text("Hello Drawer"),
              new ElevatedButton(onPressed: () => Navigator.pop(context), child: Text("Close"))
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onClicked,
        backgroundColor: Colors.red,
        mini: false,
        child: Icon(Icons.timer),
      ),
      body: Column(
        children: [
          Text(_floatingActionButtonValue),
          Text(_value.toString()),
        ],
      )
    );
  }
}
