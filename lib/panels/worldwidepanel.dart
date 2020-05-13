import 'package:flutter/material.dart';

class WorldWidePanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2,
        ),
        children: <Widget>[
          StatusPanel(),
          StatusPanel(),
          StatusPanel(),
          StatusPanel(),
        ],
      ),
    );
  }
}

class StatusPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Width of the device.
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 80,
      width: width / 2,
      margin: EdgeInsets.all(10.0),
      color: Colors.blue[100],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'CONFIRMED',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Text(
            '1234',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
