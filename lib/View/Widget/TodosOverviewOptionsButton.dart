import 'package:flutter/material.dart';
import 'package:todo/Utils/String.dart';

enum TodosOverviewOption { toggleAll, clearCompleted }

class TodosOverviewOptionsButton extends StatelessWidget {
  const TodosOverviewOptionsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        shape: const ContinuousRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        icon: const Icon(Icons.more_vert_rounded),
        itemBuilder: (context) {
          return [
            const PopupMenuItem(
              value: TodosOverviewOption.toggleAll,
              child: Text(todosOverviewOptionsMarkAllComplete),
            ),
            const PopupMenuItem(
              value: TodosOverviewOption.clearCompleted,
              child: Text(todosOverviewOptionsClearCompleted),
            )
          ];
        });
  }
}
