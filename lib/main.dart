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
          home: FutureScreen()
    );
  }
}
class FutureScreen extends StatelessWidget {

  Future<String> downloadedData() {
    return Future.delayed(Duration(seconds: 5), () {
      return "Download Complete";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Future Example"),),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.favorite_border),
        onPressed: () {},
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Center(
          child: FutureBuilder<String>(
            future: downloadedData(),
            builder: (context, response) {
              if(response.connectionState == ConnectionState.done) {
                return Text(response.data);
              } else {
                return CircularProgressIndicator();
              }
            },
          ),
        ),
      ),
    );
  }
}

