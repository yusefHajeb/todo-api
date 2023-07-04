import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:todo_api/models/todo.dart';

// import 'package:todo_api/todo.dart';

class DetailApi {
  DetailApi();
  Future<Todo> getDetail(String id) async {
    final uri = "https://jsonplaceholder.typicode.com/todos/$id";
    try {
      var respons = await http.get(Uri.parse(uri));
      Todo todos2 = Todo.fromJson2(respons.body);
      // Todo todos = (json.decode(respons.body))
      //     .map((jsonTodo) => Todo.fromJson(jsonTodo));

      return todos2;
    } catch (e) {
      rethrow;
    }
  }
}
