import "package:flutter/material.dart";

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Welcome Screen",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
