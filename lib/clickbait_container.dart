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
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
          );
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

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}