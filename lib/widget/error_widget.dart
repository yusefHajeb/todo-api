import 'package:flutter/material.dart';

class WidgetErrorTodos extends StatelessWidget {
  const WidgetErrorTodos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("error"),
        const SizedBox(
          height: 20,
        ),
        MaterialButton(
          onPressed: () {},
          color: Colors.amber,
          child: const Text(
            "Try Again",
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
