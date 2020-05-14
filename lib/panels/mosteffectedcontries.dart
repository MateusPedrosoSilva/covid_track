import 'package:flutter/material.dart';

class MostAffectedPanel extends StatelessWidget {
  final List countryData;

  const MostAffectedPanel({Key key, this.countryData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            child: Row(
              children: <Widget>[
                Image.network(countryData[index]['countryInfo']['flag']),
              ],
            ),
          );
        },
        itemCount: 5,
      ),
    );
  }
}
