import 'package:flutter/material.dart';

import 'package:smartchoice/screens/bottom_nav_bar/bottom_nav_bar.dart';

class BuyHealth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy Health'),
      ),
      body: Text('Buying Health Products Screen'),
      bottomNavigationBar: BottonNavBar(1, (int idx) => null),
    );
  }
}