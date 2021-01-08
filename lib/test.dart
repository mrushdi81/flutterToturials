import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "mamdouh",
      home: Scaffold(
        appBar: AppBar(
          title: Text('mamdouh'),
          backgroundColor: Colors.amber,
        ),
      ),
    );
  }
}
