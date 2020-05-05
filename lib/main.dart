import 'package:flutter/material.dart';

import 'package:smartchoice/screens/splash/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(primarySwatch: Colors.blue),
      theme: ThemeData(primaryColor: Color(0xFF2A3B8F)),
      home: Splash(),
    );
  }
}
