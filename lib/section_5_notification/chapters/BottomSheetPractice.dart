

import 'package:flutter/material.dart';

class BottomSheetPractice extends StatefulWidget {
  @override
  _BottomSheetPracticeState createState() => _BottomSheetPracticeState();
}

class _BottomSheetPracticeState extends State<BottomSheetPractice> {
  void _showBottom() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return new Container(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Some info here",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold
                    ),
                ),
                ElevatedButton(onPressed: () => Navigator.pop(context),
                    child: Text("Close"),
                ),
              ],
            ),
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Section 5"),
      ),
      body: Container(
        child: ElevatedButton(onPressed: _showBottom,
        child: Text("Show Bottom Sheet"),),
      ),
    );
  }
}
