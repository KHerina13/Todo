import 'package:flutter/material.dart';
import 'package:todo/Utils/String.dart';
import 'package:todo/View/Widget/TodoListTile.dart';

import '../Widget/TodosOverviewFilterButton.dart';
import '../Widget/TodosOverviewOptionsButton.dart';

class TodoOverViewScreen extends StatefulWidget {
  const TodoOverViewScreen({super.key});

  @override
  State<TodoOverViewScreen> createState() => _TodoOverViewScreenState();
}

class _TodoOverViewScreenState extends State<TodoOverViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appBarTitle),
        actions: const [
          TodosOverviewFilterButton(),
          TodosOverviewOptionsButton(),
        ],
      ),
      body: ListView(
        children: [TodoListTile()],
      ),
    );
  }
}
