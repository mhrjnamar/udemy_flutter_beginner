import 'package:flutter/material.dart';
import 'package:udemy_flutter_beginner/section_3_input_widgets/assignment/Section3Assignment.dart';

import 'DatePickerPractice.dart';
import 'RadioPractice.dart';
import 'SliderPractice.dart';
import 'SwitchesPractice.dart';

class Section3 extends StatefulWidget {
  @override
  _Section3State createState() => _Section3State();
}

class _Section3State extends State<Section3> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        new Section3Assignment(),
        new DatePickerPractice(),
        new SliderPractice(),
        new SwitchesPractice(),
        new RadioPractice(),
      ],
    );
  }
}
