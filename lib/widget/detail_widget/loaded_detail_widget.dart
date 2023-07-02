import 'package:flutter/material.dart';
import 'package:todo_api/models/todo.dart';

class LoadedDetailsWidget extends StatelessWidget {
  final Todo detail;
  const LoadedDetailsWidget({Key? key, required this.detail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          Card(
            child: Text(
              detail.title.toString(),
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black45),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Container(
            width: 300,
            height: 50,
            child: detail.completed ?? false
                ? const Icon(
                    Icons.done_outline_rounded,
                    size: 20,
                  )
                : const Icon(Icons.close, size: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: detail.completed ?? false
                    ? const Color.fromARGB(255, 128, 245, 132)
                    : Colors.redAccent),
          )
        ],
      ),
    );
  }
}
