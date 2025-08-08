import 'package:drawer_app/variables.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: background_color,
        appBar: AppBar(
          title: Text(
            "D R A W E R  A P P",
            style: TextStyle(color: text_icon_color),
          ),
        ),
      ),
    );
  }
}
