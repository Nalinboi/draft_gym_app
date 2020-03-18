import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ClickbaitContainer extends StatelessWidget {
  final String containerName;

  const ClickbaitContainer({this.containerName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Text(containerName),
      color: Colors.grey[300],    
    );
  }

}


