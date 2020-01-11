import 'package:flutter/material.dart';
import 'package:fluttering/tabs/FirstTab.dart';
import 'package:fluttering/tabs/SecondTab.dart';
import 'package:fluttering/tabs/ThirdTab.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tab Bar Example'),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(text: 'First'),
                Tab(text: 'Second'),
                Tab(text: 'Third'),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              FirstTab(),
              SecondTab(),
              ThirdTab(),
            ],
          ),
        ),
        length: 3,
        initialIndex: 0,
      ),
    );
  }
}
