import 'package:flutter/material.dart';
import 'package:iiflb1/routing/send_data/todo.dart';
import 'package:iiflb1/routing/send_data/todo_screen.dart';



void main() {
  runApp(
    MaterialApp(
      title: 'Passing Data',
      home: TodosScreen(
        todos: List.generate(
          20,
              (i) => Todo(
            'Todo $i',
            'A description of what needs to be done for Todo $i',
          ),
        ),
      ),
    ),
  );
}