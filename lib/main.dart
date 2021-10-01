// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Nombre de clics: $_counter'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            if (_counter > 0) Text("Continuez à cliquer"),
            if (_counter > 5 && _counter < 10) Text("OK...pas mal"),
            if (_counter >= 10 && _counter < 20)
              Text("Les choses sérieuses peuvent commencer :)"),
            if (_counter >= 20 && _counter < 35)
              Text("Pas mal pas mal ... peut mieux faire"),
            if (_counter >= 35 && _counter < 60) Text("Jitter click"),
            if (_counter >= 60 && _counter < 120) Text("Pas mal"),
            if (_counter >= 120 && _counter < 200) Text("PC qui surchauffe :("),
            if (_counter >= 200 && _counter < 201)
              Text("plus que quelques cliques avant EXPLOSION"),
            if (_counter >= 201 && _counter < 350) Text("BOUM"),
            if (_counter >= 350) Text("Pourquoi cliques-tu encore ?")
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
