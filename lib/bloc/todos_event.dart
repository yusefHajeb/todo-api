part of 'todos_bloc.dart';

@immutable
abstract class TodosEvent {}

class GetAllTodos extends TodosEvent {}
