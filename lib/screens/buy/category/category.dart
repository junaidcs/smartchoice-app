import 'package:flutter/material.dart';

class BuyCategory extends StatelessWidget {
  // BuyCategory();
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
          margin: EdgeInsets.only(bottom: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CategoryWidget('assets/icons/health_min.png', 'Health Insurance'),
              CategoryWidget('assets/icons/travel_min.png', 'Travel Insurance'),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CategoryWidget('assets/icons/car_min.png', 'Car Insurance'),
              CategoryWidget('assets/icons/termlife_min.png', 'Term Life'),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CategoryWidget(
                  'assets/icons/corporate_min.png', 'Personal Accident'),
              CategoryWidget(
                  'assets/icons/corporate_min.png', 'Corporate Health'),
            ],
          ),
        ),
      ],
    );
  }
}

class CategoryWidget extends StatelessWidget {
  final String imagePath;
  final String text;

  CategoryWidget(this.imagePath, this.text);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {},
      // splashColor: Theme.of(context).splashColor,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              spreadRadius: 3,
              blurRadius: 7,
              color: Colors.grey.withOpacity(0.1),
            )
          ],
        ),
        width: 170.0,
        height: 170.0,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(imagePath),
              Padding(
                padding: EdgeInsets.only(top: 14),
                child: Text(
                  text,
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      letterSpacing: -0.8),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
