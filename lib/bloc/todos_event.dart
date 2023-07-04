part of 'todos_bloc.dart';

@immutable
abstract class TodosEvent {}

class GetAllTodosEvent extends TodosEvent {}
