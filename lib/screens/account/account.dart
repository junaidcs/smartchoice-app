import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Account screen',
      style: TextStyle(
        color: Theme.of(context).primaryColor,
        fontSize: 26,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
