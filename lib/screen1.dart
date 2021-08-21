import 'package:bmi/brain.dart';
import 'package:bmi/result.dart';
import 'package:flutter/material.dart';
import 'widgets.dart';

class screen_1 extends StatefulWidget {
  @override
  _screen_1State createState() => _screen_1State();
}

class _screen_1State extends State<screen_1> {
  @override
  int age = 10;
  int height = 160;
  int weight = 55;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "BMI",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          cont(
            chld: Column(
              children: <Widget>[
                inside_cont(
                  text: "Age",
                  logo: Icons.timer,
                ),
                Text(
                  age.toString(),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                Slider(
                  value: age.toDouble(),
                  min: 1,
                  max: 100,
                  activeColor: Colors.red,
                  inactiveColor: Colors.black,
                  onChanged: (newvalue) {
                    setState(() {
                      age = newvalue.toInt();
                    });
                  },
                ),
              ],
            ),
          ),
          cont(
            chld: Column(
              children: <Widget>[
                inside_cont(
                  text: "Weight",
                  logo: Icons.line_weight,
                ),
                Text(
                  "$weight kg",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                Slider(
                  value: weight.toDouble(),
                  min: 5,
                  max: 140,
                  activeColor: Colors.green,
                  inactiveColor: Colors.black,
                  onChanged: (newvalue) {
                    setState(() {
                      weight = newvalue.toInt();
                    });
                  },
                ),
              ],
            ),
          ),
          cont(
            chld: Column(
              children: <Widget>[
                inside_cont(
                  text: "Height",
                  logo: Icons.format_size,
                ),
                Text(
                  "$height cm",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                Slider(
                  value: height.toDouble(),
                  min: 110,
                  max: 240,
                  activeColor: Colors.blue,
                  inactiveColor: Colors.black,
                  onChanged: (newvalue) {
                    setState(() {
                      height = newvalue.toInt();
                    });
                  },
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {

              bmi_cal merabmi = bmi_cal(height: height.toDouble(),weight: weight.toDouble(),age:age.toDouble());           
              
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => bmi_page(bmic: merabmi.bmido(),tipni: merabmi.tipni(),)));
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(5, 0, 5, 10),
              padding: EdgeInsets.all(10),
              height: 45,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text("Calculate"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
