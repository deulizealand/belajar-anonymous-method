import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int nilai = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Anonymous Method'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(nilai.toString()),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      nilai = Random().nextInt(100);
                    });
                  },
                  child: Text(nilai.toString()),
                ),
              ],
            ),
          )),
    );
  }
}
