import 'package:flutter/material.dart';
import 'package:udemy_flutter_beginner/DatePickerPractice.dart';
import 'package:udemy_flutter_beginner/RadioPractice.dart';
import 'package:udemy_flutter_beginner/SliderPractice.dart';
import 'package:udemy_flutter_beginner/SwitchesPractice.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {
  String _value = "Hello World";
  int _intValue = 0;

  String _stringValue = '';

  bool _value1 = false;
  bool _value2 = false;

  void _value1Changed(bool value) => setState(() => _value1 = value);

  void _value2Changed(bool value) => setState(() => _value2 = value);

  void _onChange(String value) {
    setState(() => _stringValue = 'Change: $value');
  }

  void _onSubmit(String value) {
    setState(() => _stringValue = 'Submit: $value');
  }

  void _onClick() {
    setState(() {
      _value = 'My name is Amar';
    });
  }

  void _onPressed() {
    setState(() {
      _value = new DateTime.now().toString();
    });
  }

  void _add() {
    setState(() {
      _intValue++;
    });
  }

  void _subtract() {
    setState(() {
      _intValue--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('First App'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new SingleChildScrollView(
          child: new Center(
            child: new Column(
              children: <Widget>[
                new DatePickerPractice(),
                new SliderPractice(),
                new SwitchesPractice(),
                new RadioPractice(),
                Text("CheckBox"),
                new Checkbox(value: _value1, onChanged: _value1Changed),
                new CheckboxListTile(
                  value: _value2,
                  onChanged: _value2Changed,
                  title: new Text('Hello World'),
                  controlAffinity: ListTileControlAffinity.leading,
                  subtitle: new Text('Subtitle'),
                  secondary: new Icon(Icons.archive),
                  activeColor: Colors.red,
                ),
                new Text(_value),
                new ElevatedButton(
                  onPressed: () => _onPressed,
                  child: new Text("Click me"),
                ),
                new TextButton(
                  onPressed: () => _onPressed,
                  child: new Text('Click'),
                ),
                new Text('Value = $_intValue'),
                new IconButton(icon: new Icon(Icons.add), onPressed: _add),
                new IconButton(
                    icon: new Icon(Icons.remove), onPressed: _subtract),
                new ElevatedButton(
                    onPressed: _onClick, child: new Text("Tell my name")),
                new Text(_stringValue),
                new TextField(
                  decoration: new InputDecoration(
                    labelText: "Hello",
                    hintText: 'Hint',
                    icon: new Icon(Icons.people),
                  ),
                  autocorrect: true,
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  onChanged: _onChange,
                  onSubmitted: _onSubmit,
                ),


              ],
            ),
          ),
        )
      ),
    );
  }
}
