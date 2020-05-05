import 'package:flutter/material.dart';

import 'package:smartchoice/screens/splash/splash.dart';
import 'package:smartchoice/screens/intro/intro.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(primarySwatch: Colors.blue),
      theme: ThemeData(primaryColor: Color(0xFF2A3B8F)),
      home: _getScreen(),
    );
  }

  Widget _getScreen() {
    return IntoScreens();
    // return Splash();
  }
}
