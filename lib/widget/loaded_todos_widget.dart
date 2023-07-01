// import 'dart:html';

import 'package:flutter/material.dart';

import '../todo.dart';

class LoadidTodosWidget extends StatelessWidget {
  List<Todo> todos;
  LoadidTodosWidget({required this.todos});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
                title: Text(todos[index].title.toString()),
                leading: CircleAvatar(
                  child: Text(todos[index].id.toString()),
                  backgroundColor: Colors.amber,
                ),
                trailing: todos[index].completed.toString() == "true"
                    ? const Icon(
                        Icons.done,
                        color: Color.fromARGB(255, 255, 219, 110),
                      )
                    : null)
          ],
        );
      },
      itemCount: todos.length,
    );
  }
}
