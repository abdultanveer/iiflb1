import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'browser title',
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[300],
        title: Text('iifl demo app'),
        centerTitle: true,
      ),
      body: Center(
          child: Text(
              'clicked these many times',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.blue
            ),
          )
      ),
      floatingActionButton:  FloatingActionButton(
        child: Text('INC'),
        onPressed: _increment(),
      ),

    ),
  ));
}

_increment() {
}
