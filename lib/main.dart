import 'package:flutter/material.dart';
import 'package:fluttering/WelcomeScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Provider Basic",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: MainScreen());
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preferences"),
      ),
      body: Center(
        child: FlatButton(
          child: Text(
            "Proceed",
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.deepPurple,
          onPressed: () async {
            bool visitingFlag = await getVisitedFlag();

            setVisitedFlag();

            if (visitingFlag) {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HomeScreen()));
            } else {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => WelcomeScreen()));
            }
          },
        ),
      ),
    );
  }
}

setVisitedFlag() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  preferences.setBool("already_visited", true);
}

getVisitedFlag() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  bool alradyVisited = preferences.getBool('already_visited') ?? false;
  return alradyVisited;
}
