import 'package:flutter/material.dart';

import 'package:smartchoice/screens/splash/splash.dart';
import 'package:smartchoice/screens/intro/intro.dart';
import 'package:smartchoice/screens/home.dart';
import 'package:smartchoice/screens/buy/health/health.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(primarySwatch: Colors.blue),
      theme: ThemeData(
        primaryColor: Color(0xFF2A3B8F),
        splashColor: Color(0xFF2A3B8F),
        secondaryHeaderColor: Color(0xffef9807),
      ),
      home: _getScreen(),
    );
  }

  Widget _getScreen() {
    // return IntoScreens();
    return Splash();
    // return Home();
    // return BuyHealth();
  }
}
