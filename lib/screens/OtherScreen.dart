import 'package:flutter/material.dart';

class OtherScreen extends StatefulWidget {
  @override
  _OtherScreenState createState() => _OtherScreenState();
}

class _OtherScreenState extends State<OtherScreen> {

  var counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Other Screen'),
      ),
      body: Center(
        child: Text('Current counter state is $counter', style: TextStyle(color: Colors.white, fontSize: 18),),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, color: Colors.white,),
        backgroundColor: Colors.red,
        onPressed: () {
          setState(() {
            counter+=2;
          });
        },
      ),
      backgroundColor: Colors.deepPurple,
    );
  }
}
