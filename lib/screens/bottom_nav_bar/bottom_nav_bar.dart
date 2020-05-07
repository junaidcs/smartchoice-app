import 'package:flutter/material.dart';

class BottonNavBar extends StatelessWidget {
  final int _selectedIndex;
  final Function _onItemTapped;
  BottonNavBar(this._selectedIndex, this._onItemTapped);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      selectedItemColor: Theme.of(context).secondaryHeaderColor,
      onTap: _onItemTapped,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_balance_wallet),
          title: Text('Buy'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.cached),
          title: Text('Referels'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.assignment),
          title: Text('Manage'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          title: Text('Account'),
        ),
      ],
    );
  }
}
