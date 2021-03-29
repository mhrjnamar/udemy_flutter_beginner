import 'package:flutter/material.dart';

class SnackBarPractice extends StatefulWidget {
  @override
  _SnackBarPracticeState createState() => _SnackBarPracticeState();
}

class _SnackBarPracticeState extends State<SnackBarPractice> {
  final GlobalKey<ScaffoldState> _scaffoldState = new GlobalKey<ScaffoldState>();
  void _showBar() {
   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("test")));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldState,
      appBar: AppBar(
        title: Text("SnackBar"),
      ),
      body: ElevatedButton(
        onPressed: _showBar,
        child: Text("Show Snack Bar"),
      ),
    );
  }
}
