import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('App Rules'
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('You ahve to know that:',
          ),
          Text('Only simple operations are allowed, like: 2+2, 8/2, 7*6 and so on'),
          Text('Equations like 2++2, 8/*2 are not allowed'),
          Text('only singular numbers are allowed'),
          Text('Equations like +22 or 22+ are the same such as 2+2'),
          Text('karolinkalovkikiski'),
          Text('3333333333333'),
          Text('222222222'),
        ],
      )
    );
  }
}