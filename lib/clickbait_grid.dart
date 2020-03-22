import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'clickbait_container.dart';

class ClickbaitGrid extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        ClickbaitContainer( containerName: "Biceps", ),
        ClickbaitContainer( containerName: "Triceps", ),
        ClickbaitContainer( containerName: "Shoulders", ),
        ClickbaitContainer( containerName: "Chest", ),
        ClickbaitContainer( containerName: "Back", ),
        ClickbaitContainer( containerName: "Abs", ),
        ClickbaitContainer( containerName: "Quads", ),
        ClickbaitContainer( containerName: "Glutes", ),
        ClickbaitContainer( containerName: "Calves", ),
        ClickbaitContainer( containerName: "Traps", ),        
      ],
    );
  }

}




