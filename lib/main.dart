//import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
//import 'dart:async';
//import 'dart:convert';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  final FixedExtentScrollController fixedExtentScrollController =
  new FixedExtentScrollController();

  List<String> monthsOfTheYear =
  ['Jan','feb','mar','apr','may','jun','jul','agu','sep','oct'];

  @override

  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
        title: const Text('List'),
    ),
    body:ListWheelScrollView(
      controller: fixedExtentScrollController,
      physics: FixedExtentScrollPhysics(),
      children: monthsOfTheYear.map((month) {
        return Card(
          color: Colors.white70,
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:Center( child: Text(
                        month,
                        style: TextStyle(color: Colors.deepPurple),
                      ),
                      ),
                    )),
              ],
            ));
      }).toList(),
      itemExtent: 60.0,
    ),
        ),
    );
  }

}