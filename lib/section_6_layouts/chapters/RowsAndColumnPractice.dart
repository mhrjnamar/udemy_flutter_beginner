import 'package:flutter/material.dart';

class RowsAndColumnPractice extends StatefulWidget {
  @override
  _RowsAndColumnPracticeState createState() => _RowsAndColumnPracticeState();
}

class _RowsAndColumnPracticeState extends State<RowsAndColumnPractice> {
  TextEditingController _user = new TextEditingController();
  TextEditingController _pass = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Please Login"),
        Row(
          children: [
            Text("Username"),
            Expanded(child: TextField(controller: _user,))
          ],
        ),
        Row(
          children: [
            Text("Password"),
            Expanded(child: TextField(controller: _pass, obscureText: true,))
          ],
        ),
        Padding(padding: EdgeInsets.all(12),
        child: ElevatedButton(child: Text("Click Me!"), onPressed: () => print("Login"+_user.text),),)
      ],
    );
  }
}
