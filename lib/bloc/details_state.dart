part of 'details_bloc.dart';

@immutable
abstract class DetailsState {}

class LoadingDitailState extends DetailsState {}

class ErrorDetailState extends DetailsState {
  final String message;

  ErrorDetailState(this.message);

  @override
  List<Object> get props => [message];
}

class LoadedDetailState extends DetailsState {
  final Todo todo;

  LoadedDetailState({required this.todo});

  @override
  List<Object> get props => [todo];
}
