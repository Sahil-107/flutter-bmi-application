import 'package:bmi/widgets.dart';
import 'package:flutter/material.dart';

class bmi_page extends StatelessWidget {
  bmi_page({this.bmic,this.tipni});

  String bmic;
  String tipni;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Results",
          style: TextStyle(
            color: Colors.white, fontSize: 30
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          cont(
            chld: Column(
             children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(bmic,
                  style: TextStyle(
                    color:Colors.red,
                    fontSize: 40
                  ),),
                ),
                SizedBox(height:10),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 0, 20, 0),
                  child: Center(
                    child: Text(tipni,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25
                    ),
                    ),
                  ),
                )
             ],
            ),
          )
        ],
      ),
    );
  }
}
