import 'package:flutter/material.dart';

class Section3Assignment extends StatefulWidget {
  @override
  _Section3AssignmentState createState() => _Section3AssignmentState();
}

class _Section3AssignmentState extends State<Section3Assignment> {
  String _value = '';
  String _changedValue = '';

  void _setValue() => setState(() => _value = _changedValue);

  void _setChangedValue(String value) => setState(() => _changedValue = value);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        new Text(_value),
        new TextField(
          onChanged: _setChangedValue,
        ),
        new ElevatedButton(onPressed: _setValue, child: new Text("Submit")),
      ],
    );
  }
}
