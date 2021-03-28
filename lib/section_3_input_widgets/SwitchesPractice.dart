import 'package:flutter/material.dart';

class SwitchesPractice extends StatefulWidget {
  @override
  _SwitchesPracticeState createState() => _SwitchesPracticeState();
}

class _SwitchesPracticeState extends State<SwitchesPractice> {
  bool _value1 = false;
  bool _value2 = false;

  void _onChanged1(bool value) => setState(() => _value1 = value);
  void _onChanged2(bool value) => setState(() => _value2 = value);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        new Switch(value: _value1, onChanged: _onChanged1),
        new SwitchListTile(
            value: _value2,
            onChanged: _onChanged2,
          title: new Text("Hello World",
            style: new TextStyle(
                fontWeight: FontWeight.bold,
            color: Colors.red),),
        )
      ],
    );
  }
}
