import 'package:flutter/material.dart';

import 'Input_Page.dart';                                                            

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Input_Page(),
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF151526),
        primaryColor: Color(0xFF151526),
      ),
    );
  }
}
