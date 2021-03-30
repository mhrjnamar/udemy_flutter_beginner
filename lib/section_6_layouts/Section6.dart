import 'package:flutter/material.dart';
import 'package:udemy_flutter_beginner/section_6_layouts/chapters/RowsAndColumnPractice.dart';

class Section6 extends StatefulWidget {
  @override
  _Section6State createState() => _Section6State();
}

class _Section6State extends State<Section6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Section 6"),
      ),
      body: Column(
        children: [RowsAndColumnPractice()],
      ),
    );
  }
}
