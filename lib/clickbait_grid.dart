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
        ClickbaitContainer( containerName: "Common", ),
        ClickbaitContainer( containerName: "Lets", ),
        ClickbaitContainer( containerName: "go", ),
        ClickbaitContainer( containerName: "boss", ),
        ClickbaitContainer( containerName: "im", ),
        ClickbaitContainer( containerName: "really", ),
        ClickbaitContainer( containerName: "Tired", ),
        ClickbaitContainer( containerName: "like", ),
        ClickbaitContainer( containerName: "bruh", ),
        ClickbaitContainer( containerName: "this", ),
        ClickbaitContainer( containerName: "better", ),
        ClickbaitContainer( containerName: "work", ),        
      ],
    );
  }

}




