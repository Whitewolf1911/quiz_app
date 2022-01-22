// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  VoidCallback resetFunction;

  Result(this.resetFunction);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            "That's all folks!!!",
            textScaleFactor: 3,
            style: TextStyle(color: Colors.orange),
          ),
          FlatButton(
            onPressed: resetFunction,
            child: Text("Restart the App"),
            padding: EdgeInsets.all(10),
            color: Colors.orange,
          )
        ],
      ),
    );
  }
}
