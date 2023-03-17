import 'package:flutter/material.dart';
import 'package:iiflb1/state/tapbox_a.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'state demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('state demo'),
        ),
        body: Center(
          child: TapBoxA(),
        ),
      ),

    );
  }
}
