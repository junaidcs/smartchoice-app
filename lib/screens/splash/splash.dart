import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
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