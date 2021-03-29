import 'package:flutter/material.dart';
import 'dart:async';

class AlertDialogPractice extends StatefulWidget {
  @override
  _AlertDialogPracticeState createState() => _AlertDialogPracticeState();
}

class _AlertDialogPracticeState extends State<AlertDialogPractice> {
  Future _showAlert(BuildContext context, String message) async {
    return showDialog(context: context,
        builder: (BuildContext context) =>
            AlertDialog(title: Text(message),
              actions: [
                TextButton(onPressed: () => Navigator.pop(context),
                    child: Text("OK"))
              ],

        ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AlertDialog Practice"),
      ),
      body: Container(
          child: ElevatedButton(
            onPressed: () {
             _showAlert(context, "Do You like flutter, I do!");
            },
            child: Text(""
                "ShowAlert Dialog"),
          ),
      ),
    );
  }
}
