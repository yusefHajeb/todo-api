import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'api/api.dart';
import 'bloc/todos_bloc.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodosBloc(tods: TodoApi())..add(GetAllTodos()),
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}