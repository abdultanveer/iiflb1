import 'package:flutter/material.dart';
import 'package:iiflb1/networking/album.dart';

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;


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

Future<Album> fetchAlbum(http.Client client) async {
  final response = await client
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}