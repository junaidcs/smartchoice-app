import 'package:flutter/material.dart';
import 'dart:async';

import 'package:smartchoice/screens/intro/intro.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  startTime() {
    Timer(Duration(seconds: 5), () {
      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => IntoScreens()));
    });
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Center(
        child: Image(
          image: AssetImage('assets/images/logo_splash.png'),
        ),
      ),
    );
  }
}
