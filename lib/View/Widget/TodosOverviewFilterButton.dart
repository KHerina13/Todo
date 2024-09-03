import 'package:flutter/material.dart';
import 'package:todo/Utils/String.dart';

enum TodosViewFilter { all, activeOnly, completedOnly }

class TodosOverviewFilterButton extends StatelessWidget {
  const TodosOverviewFilterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        shape: const ContinuousRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        icon: const Icon(Icons.filter_list_rounded),
        tooltip: todosOverviewFilterTooltip,
        onSelected: (filter) {},
        itemBuilder: (context) {
          return const [
            PopupMenuItem(
              value: TodosViewFilter.all,
              child: Text(todosOverviewFilterAll),
            ),
            PopupMenuItem(
              value: TodosViewFilter.activeOnly,
              child: Text(todosOverviewFilterActiveOnly),
            ),
            PopupMenuItem(
              value: TodosViewFilter.completedOnly,
              child: Text(todosOverviewFilterCompletedOnly),
            )
          ];
        });
  }
}
