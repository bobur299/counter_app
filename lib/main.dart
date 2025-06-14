import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: counter_app(), debugShowCheckedModeBanner: false));
}

class counter_app extends StatefulWidget {
  const counter_app({super.key});

  @override
  State<counter_app> createState() => _counter_appState();
}

class _counter_appState extends State<counter_app> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo Home Page'),
        centerTitle: false,
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You have pushed the button this many times:"),
            Text(counter.toString(), style: TextStyle(fontSize: 30)),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              counter--;
              print(counter);
              setState(() {});
            },
            child: Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: () {
              counter = 0;
              setState(() {});
            },
            child: Icon(Icons.exposure_zero),
          ),
          FloatingActionButton(
            onPressed: () {
              counter++;
              setState(() {});
            },
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
