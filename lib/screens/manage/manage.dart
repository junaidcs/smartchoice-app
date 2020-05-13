import 'package:flutter/material.dart';

class Manage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Manage screen',
      style: TextStyle(
        color: Theme.of(context).primaryColor,
        fontSize: 26,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
