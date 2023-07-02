import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_api/bloc/todos_bloc.dart';
import 'package:todo_api/cubit/todos_cubit.dart';

class WidgetErrorTodos extends StatelessWidget {
  final String message;
  const WidgetErrorTodos({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: Text(
              message,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          MaterialButton(
            onPressed: () {
              BlocProvider.of<TodosCubit>(context).getAllTodosEvent();
            },
            color: Colors.amber,
            child: const Text(
              "Try Again",
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
