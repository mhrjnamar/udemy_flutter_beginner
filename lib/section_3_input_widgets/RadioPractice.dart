import 'package:flutter/material.dart';

class RadioPractice extends StatefulWidget {
  @override
  _RadioPracticeState createState() => _RadioPracticeState();
}

class _RadioPracticeState extends State<RadioPractice> {

  int _value1 = 0;
  int _value2 = 0;

  void _setValue1(int value) => setState(() => _value1 = value);
  void _setValue2(int value) => setState(() => _value2 = value);

  Widget makeRadios() {
    List<Widget> list = [];

    for(int i = 0; i< 3; i++){
      list.add(new Radio(value: i, groupValue: _value1, onChanged: _setValue1,));
    }

    Column column = new Column(children: list,);
    return column;
  }

  Widget makeRadoTiles() {
    List<Widget> list = [];

    for(int i = 0; i< 3; i++){
      list.add(
          new RadioListTile(
        value: i,
            groupValue: _value2,
            onChanged: _setValue2,
          activeColor: Colors.green,
          controlAffinity: ListTileControlAffinity.trailing,
            title: new Text("Item: $i"),
            subtitle: new Text("sub title"),
          ));
    }

    Column column = new Column(children: list,);
    return column;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        makeRadios(),
        makeRadoTiles()
      ],
    );
  }
}
