import 'package:flutter/material.dart';

import 'package:smartchoice/screens/buy/health/health.dart';

class CategoryWidget extends StatelessWidget {
  final String imagePath;
  final String text;

  CategoryWidget(this.imagePath, this.text);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) => BuyHealth()))
      },
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
        // width: 170.0,
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
