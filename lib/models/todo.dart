import 'dart:convert';

class Todo {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  Todo({this.userId, this.id, this.title, this.completed});

  factory Todo.fromMap(Map<String, dynamic> data) => Todo(
        userId: data['userId'] as int?,
        id: data['id'] as int?,
        title: data['title'] as String?,
        completed: data['completed'] as bool?,
      );

  Map<String, dynamic> toMap() => {
        'userId': userId,
        'id': id,
        'title': title,
        'completed': completed,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returnxs the resulting Json object as [Todo].
  factory Todo.fromJson(Map<String, dynamic> data) {
    // return Todo.fromMap(json.decode(data));
    return Todo(
      userId: data['userId'] as int?,
      id: data['id'] as int?,
      title: data['title'] as String?,
      completed: data['completed'] as bool?,
    );
  }

  factory Todo.fromJson2(data) {
    return Todo.fromMap(json.decode(data));
  }

  /// `dart:convert`
  ///
  /// Converts [Todo] to a JSON string.
  String toJson() => json.encode(toMap());
}
