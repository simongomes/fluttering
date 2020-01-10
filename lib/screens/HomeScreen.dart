import 'package:flutter/material.dart';
import 'package:fluttering/screens/OtherScreen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: FlatButton(
          child: Text('Open Other Screen', style: TextStyle(color: Colors.white, fontSize: 18),),
          color: Colors.redAccent,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => OtherScreen()));
          },
        ),
      ),
      backgroundColor: Colors.teal,
    );
  }
}
