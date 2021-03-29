import 'package:flutter/material.dart';

class Section5Assignment extends StatefulWidget {
  @override
  _Section5AssignmentState createState() => _Section5AssignmentState();
}

class _Section5AssignmentState extends State<Section5Assignment> {
  String _userName = "";
  void _setUserName(String value) => setState(() => _userName = value);


  @override
  Widget build(BuildContext context) {

    void _showSnackBar(String message) => {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)))
    };
    return Scaffold(
      appBar: AppBar(
        title: Text("Section 5 Assignment"),
      ),
      body: Column(
        children: [
          TextField(
            onChanged: _setUserName,
          ),
          ElevatedButton(onPressed: () => {_showSnackBar("Hello $_userName")},
              child: Text("Submit"))
        ],
      ),
    );
  }
}
