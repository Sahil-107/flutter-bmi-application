import 'package:flutter/material.dart';

class cont extends StatelessWidget {
  cont({this.chld});

  Widget chld;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.blueGrey[700],
            borderRadius: BorderRadius.circular(10),
            ),
        child: chld,
      ),
    );
  }
}

class inside_cont extends StatelessWidget {
  inside_cont({this.text, this.logo});

  String text;
  IconData logo;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontSize: 35,
          ),
        ),
        SizedBox(width: 5),
        Icon(logo, color: Colors.amberAccent[400], size: 30)
      ],
    );
  }
}
