import 'package:flutter/material.dart';

import 'details_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('routing'),
      ),
      body: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailsScreen();
            }));
          },
          child: Image.network(
            'https://picsum.photos/250?image=9',
          ),
      ),
    );
  }
}
