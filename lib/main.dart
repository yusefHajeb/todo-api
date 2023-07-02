import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_api/api/api_detels.dart';
import 'package:todo_api/bloc/details_bloc.dart';
import 'package:todo_api/bloc/todos_bloc.dart';
import 'api/api.dart';
import 'cubit/todos_cubit.dart';
import 'page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TodosCubit(tods: TodoApi())..getAllTodosEvent(),
        ),
        BlocProvider(
            create: (context) => DetailsBloc(id: "1", detail: DetailApi())
              ..add(GetDetalisEvent())),
      ],
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
