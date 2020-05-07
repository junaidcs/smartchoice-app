import 'package:flutter/material.dart';
import 'package:smartchoice/style.dart';

import 'bottom_nav_bar/bottom_nav_bar.dart';
import 'buy/category/category.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('SmartChice'),
      // ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(
          AppStyle.marginLeft,
          AppStyle.marginTop,
          AppStyle.marginRight,
          AppStyle.marginBottom,
        ),
        child: _getSelectedIndexWidget(_selectedIndex, context),
      ),
      bottomNavigationBar: BottonNavBar(_selectedIndex, _onItemTapped),
    );
  }

  Widget _getSelectedIndexWidget(int index, BuildContext context) {
    switch (index) {
      case 0:
        return Text(
          'Hello Muhammad Junaid!',
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        );
        break;
      case 1:
        return BuyCategory();
        break;
      default:
        return Text('Default One');
    }
  }
}
