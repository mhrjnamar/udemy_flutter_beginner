import 'package:flutter/material.dart';

class CardPractice extends StatefulWidget {
  @override
  _CardPracticeState createState() => _CardPracticeState();
}

class _CardPracticeState extends State<CardPractice> {

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            Text("Hello word!"),
            Text("How are you?"),
          ],
        ),
      ),
    );
  }
}
