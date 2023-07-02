import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:todo_api/todo.dart';

class DetailApi {
  Future<List<Todo>> getAllData() async {
    final uri = "https://jsonplaceholder.typicode.com/todos/details";
    try {
      var respons = await http.get(Uri.parse(uri));
      List<Todo> todos = (json.decode(respons.body))
          .map<Todo>((jsonTodo) => Todo.fromJson(jsonTodo))
          .toList();
      return todos;
    } catch (e) {
      rethrow;
    }
  }
}
