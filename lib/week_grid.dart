import 'package:flutter/material.dart';

import 'clickbait_day.dart';

class WeekGrid extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        ClickbaitDay( dayName : "Monday", ),
        ClickbaitDay( dayName: "Tuesday", ),
        ClickbaitDay( dayName: "Wednesday", ),
        ClickbaitDay( dayName: "Thursday", ),
        ClickbaitDay( dayName: "Friday", ),
        ClickbaitDay( dayName: "Saturday", ),
        ClickbaitDay( dayName: "Sunday", ),     
      ],
    );
  }

}




