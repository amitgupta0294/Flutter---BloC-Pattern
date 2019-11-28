import 'package:flutter/material.dart';
import './src/view/HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Test App",
      theme: ThemeData(
        accentColor: Colors.red
      ),
      home: HomePage(),
    );
  }
}

