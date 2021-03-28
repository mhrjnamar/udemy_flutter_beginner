import 'package:flutter/material.dart';

class SliderPractice extends StatefulWidget {
  @override
  _SliderPracticeState createState() => _SliderPracticeState();
}

class _SliderPracticeState extends State<SliderPractice> {

  double _value = 0.0;
  void _setValue( double value) => setState(() => _value = value);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        new Text("Value : ${(_value * 100).round()}"),
        new Slider(value: _value, onChanged: _setValue,)
      ],
    );
  }
}
