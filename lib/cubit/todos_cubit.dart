// import 'dart:convert';
// import 'package:http/http.dart' as httdcxxp;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:todo_api/todo.dart';

import '../api/api.dart';

// part 'todos_event.dart';
part 'todos_state.dart';

class TodosCubit extends Bloc<TodosState, TodosState> {
  final TodoApi tods;
  TodosCubit({required this.tods}) : super(LoadingState());

  void getAllTodosEvent() async {
    emit(LoadingState());
    try {
      final todos = await tods.getAllData();
      emit(LoadedState(todos: todos));
    } catch (e) {
      emit(ErrorTodosState(
          message: "something Went Worng , Please Try Again Later ${e}"));
    }
  }
}
