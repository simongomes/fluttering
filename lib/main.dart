import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          title: "Provider Basic",
          theme: ThemeData(
              primarySwatch: Colors.blue
          ),
          home: TextFieldScreen()
    );
  }
}

class TextFieldScreen extends StatefulWidget {
  @override
  _TextFieldScreenState createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  final _textFieldController = TextEditingController();
  String name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(name),
          Container(
            child: TextField(
              controller: _textFieldController,
            ),
            padding: EdgeInsets.all(32),
          ),
          Container(
            width: double.infinity,
            child: FlatButton(
              child: Text('Update Text', style: TextStyle(color: Colors.white)),
              color: Colors.deepPurple,
              onPressed: () {
                setState(() {
                  name = _textFieldController.text;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}

