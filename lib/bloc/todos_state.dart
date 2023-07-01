part of 'todos_bloc.dart';

@immutable
abstract class TodosState {}

class LoadingState extends TodosState {}

class LoadedState extends TodosState {
  final List<Todo> todos;

  LoadedState({required this.todos});

  @override
  List<Object> get props => [todos];
}

class ErrorTodosState extends TodosState {
  final String message;

  ErrorTodosState({required this.message});

  @override
  List<Object> get props => [message];
}

// import 'dart:convert';

// class Todo {
//   int? userId;
//   int? id;
//   String? title;
//   bool? completed;

//   Todo({this.userId, this.id, this.title, this.completed});

//   factory Todo.fromMap(Map<String, dynamic> data) => Todo(
//         userId: data['userId'] as int?,
//         id: data['id'] as int?,
//         title: data['title'] as String?,
//         completed: data['completed'] as bool?,
//       );

//   Map<String, dynamic> toMap() => {
//         'userId': userId,
//         'id': id,
//         'title': title,
//         'completed': completed,
//       };

//   /// `dart:convert`
//   ///
//   /// Parses the string and returnxs the resulting Json object as [Todo].
//   factory Todo.fromJson(String data) {
//     return Todo.fromMap(json.decode(data) as Map<String, dynamic>);
//   }

//   /// `dart:convert`
//   ///
//   /// Converts [Todo] to a JSON string.
//   String toJson() => json.encode(toMap());
// }
