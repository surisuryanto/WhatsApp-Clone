// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gbwa_clone/bot_navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: NavBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}
