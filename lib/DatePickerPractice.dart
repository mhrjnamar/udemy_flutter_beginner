import 'package:flutter/material.dart';

class DatePickerPractice extends StatefulWidget {
  @override
  _DatePickerPracticeState createState() => _DatePickerPracticeState();
}

class _DatePickerPracticeState extends State<DatePickerPractice> {
  String _value = '';

  Future _selectDate() async{
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2016),
        lastDate: new DateTime(2025));
    if(picked!=null) setState(() {
      _value = picked.toString();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children :[
        new Text(_value),
        new ElevatedButton(onPressed: _selectDate,
          child: Text("Click Me"),
        )
      ]
    );
  }
}
