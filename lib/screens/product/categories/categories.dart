import 'package:flutter/material.dart';

import 'package:smartchoice/widgets/CategoryWidget.dart';

class ProductCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 50.0),
          child: Text(
            'Product Categories',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height - 270,
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: CategoryWidget(
                          'assets/icons/health_min.png', 'Health Insurance'),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    Expanded(
                      flex: 1,
                      child: CategoryWidget(
                          'assets/icons/travel_min.png', 'Travel Insurance'),
                    ),
                    //
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: CategoryWidget(
                          'assets/icons/car_min.png', 'Car Insurance'),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    Expanded(
                      flex: 1,
                      child: CategoryWidget(
                          'assets/icons/termlife_min.png', 'Term Life'),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: CategoryWidget('assets/icons/corporate_min.png',
                          'Personal Accident'),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    Expanded(
                      flex: 1,
                      child: CategoryWidget(
                          'assets/icons/corporate_min.png', 'Corporate Health'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
