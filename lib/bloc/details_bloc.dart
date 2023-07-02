import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:todo_api/api/api_detels.dart';
import 'package:todo_api/models/todo.dart';
part 'details_event.dart';
part 'details_state.dart';

class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  final DetailApi detail;
  String id;
  DetailsBloc({required this.id, required this.detail})
      : super(LoadingDitailState()) {
    on<DetailsEvent>((event, emit) async {
      if (event is GetDetalisEvent) {
        emit(LoadingDitailState());
        try {
          final respons = await detail.getDetail(id);
          emit(LoadedDetailState(todo: respons));
        } catch (e) {
          rethrow;
        }
      }
    });
  }
}
