

import 'package:flutter/material.dart';
import 'package:udemy_flutter_beginner/section_4_scaffold/assignment/Section4Assignment.dart';

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

  String _footerValue ="";
  void _onClick(String value) => setState(() => _footerValue = value);

  String _bottomNavigationValue ="";
  int _index = 0;

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
      persistentFooterButtons: [
        IconButton(onPressed: () => _onClick("Button 1"), icon: Icon(Icons.timer)),
        IconButton(onPressed: () => _onClick("Button 2"), icon: Icon(Icons.people)),
        IconButton(onPressed: () => _onClick("Button 3"), icon: Icon(Icons.map)),
      ],
      floatingActionButton: FloatingActionButton(
        onPressed: _onClicked,
        backgroundColor: Colors.red,
        mini: false,
        child: Icon(Icons.timer),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: "People"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.weekend),
              label: "Weekend"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: "Message"
          ),
        ],
        fixedColor: Colors.blue,
        currentIndex: _index,
        onTap: (int item) {
          setState(() {
            _index = item;
            _bottomNavigationValue = "Current value is: ${_index.toString()}";
          });
        },
      ),
      body: Column(
        children: [
          Text(_floatingActionButtonValue),
          Text(_value.toString()),
          Text(_footerValue),
          Text(_bottomNavigationValue),
          ElevatedButton(onPressed: () =>
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Section4Assignment())),
              child: Text("Assignment"))
        ],
      )
    );
  }
}
