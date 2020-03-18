import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ClickbaitContainer extends StatelessWidget {
  final String containerName;

  const ClickbaitContainer({this.containerName});

  @override
  Widget build(BuildContext context) {
    // The InkWell wraps the custom flat button widget.
    return InkWell(
        // When the user taps the button, show a snackbar.
        onTap: () {
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text('Clicked: ' + containerName),            
            ),
          );
          print('Clicked: ' + containerName);
        },
        child: Container(
            width: 500.0,
            padding: const EdgeInsets.all(8),
            color: Colors.black87,
            child: Column(children: [
              Text(
                containerName,
                style: TextStyle(
                  fontSize: 36,
                  color: Colors.white,
                ),
              ),
            ])));
  }
}

/**
 * @override
  Widget build(BuildContext context) {
    return Inkwell(
        onTap: (){
          print("Container clicked");
        },
        child: Container(
          width: 500.0,
          padding: const EdgeInsets.all(8),
          color: Colors.black87,
          child: Column(
              children: [
                Text(
                  containerName,
                  style: TextStyle(
                    fontSize: 36,
                    color: Colors.white,
                  ),
                ),
              ]
          ),
        )
    );
  }
 */
