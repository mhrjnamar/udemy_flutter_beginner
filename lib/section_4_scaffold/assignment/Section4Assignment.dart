import 'package:flutter/material.dart';

class Section4Assignment extends StatefulWidget {
  @override
  _Section4AssignmentState createState() => _Section4AssignmentState();
}

class _Section4AssignmentState extends State<Section4Assignment> {
  String _date = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Assignment"),
      ),
      drawer: Drawer(
        child: ElevatedButton(child: Text("CheckDate"), onPressed: () {
          setState(() => _date = DateTime.now().toString());
          Navigator.pop(context);
        }),
      ),
      body: Text(_date),
    );
  }
}
