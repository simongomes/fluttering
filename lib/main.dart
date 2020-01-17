import 'package:flutter/material.dart';
import 'package:fluttering/CounterModel.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CounterModel>(
      create: (context) => CounterModel(),
      child: MaterialApp(
          title: "Provider Basic",
          theme: ThemeData(
              primarySwatch: Colors.blue
          ),
          home: CounterApp()
      ),
    );
  }
}

class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: Center(
        child: Consumer<CounterModel> (
          builder: (context, counterModel, _) {
            return Text("${counterModel.getCount}", style: TextStyle(fontSize: 30));
          },
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<CounterModel>(context, listen: false).incrementCounter();
        },
        child: Icon(Icons.add),
      ),
    );
  }

}
