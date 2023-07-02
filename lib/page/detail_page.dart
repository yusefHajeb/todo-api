import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_api/bloc/details_bloc.dart';
import 'package:todo_api/bloc/todos_bloc.dart';
import 'package:todo_api/models/todo.dart';
import 'package:todo_api/widget/detail_widget/loaded_detail_widget.dart';
import 'package:todo_api/widget/error_widget.dart';
import 'package:todo_api/widget/loading_widget.dart';

class DetailsTodos extends StatelessWidget {
  final Todo detail;
  const DetailsTodos({required this.detail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(detail.userId ?? 0),
      body: BlocBuilder<DetailsBloc, DetailsState>(builder: (context, state) {
        if (state is LoadedDetailState) {
          print('===================loadid in screen detail');
          return LoadedDetailsWidget(detail: detail);
        } else if (state is LoadingState) {
          return LoadingWidget();
        } else {
          return WidgetErrorTodos(message: "anything");
        }
      }),
    );
  }

  AppBar _buildAppBar(int userId) {
    return AppBar(
      title: Text("Detail Todo UserId : $userId"),
    );
  }
}
