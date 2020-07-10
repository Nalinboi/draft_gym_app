import 'package:flutter/material.dart';

class ClickbaitDay extends StatelessWidget {
  final String dayName;

  const ClickbaitDay({this.dayName});

  @override
  Widget build(BuildContext context) {
    // The InkWell wraps the custom flat button widget.
    return InkWell(
        // When the user taps the button, show a snackbar.
        onTap: () {
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text('Clicked: ' + dayName),            
            ),
          );
          print('Clicked: ' + dayName);
          Navigator.push(
              context,
              this.dayName == 'Monday' ? MaterialPageRoute(builder: (context) => MondayRoute()) : MaterialPageRoute(builder: (context) => TuesdayRoute()),              
              // MaterialPageRoute(builder: (context) => SecondRoute()), 
          );
        },
        child: Container(
            width: 500.0,
            padding: const EdgeInsets.all(8),
            color: Colors.black87,
            child: Column(children: [
              Text(
                dayName,
                style: TextStyle(
                  fontSize: 36,
                  color: Colors.white,
                ),
              ),
            ])));
  }
}

class MondayRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Monday Route"),
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

class TuesdayRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tuesday Route"),
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