import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_api/widget/loaded_todos_widget.dart';
import 'package:todo_api/widget/loading_widget.dart';

import 'bloc/todos_bloc.dart';
import 'widget/error_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: BlocBuilder<TodosBloc, TodosState>(builder: (context, state) {
          if (state is LoadedState) {
            return LoadidTodosWidget(todos: state.todos);
          } else if (state is LoadingState) {
            return LoadingWidget();
          } else {
            return WidgetErrorTodos(
              message: "Something Went Worng,  Plase Try Again",
            );
          }
        }));
  }
}
