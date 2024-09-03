import 'package:flutter/material.dart';
import 'package:todo/Utils/String.dart';

class StateScreen extends StatefulWidget {
  const StateScreen({super.key});

  @override
  State<StateScreen> createState() => _StateScreenState();
}

class _StateScreenState extends State<StateScreen> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(statsAppBarTitle),
      ),
      body: Column(
        children: [
          ListTile(
            key: const Key('statsView_completedTodos_listTile'),
            leading: Icon(Icons.check_rounded),
            title: Text(statsCompletedTodoCountLabel),
            trailing: Text(
              "34",
              style: textTheme.headlineSmall,
            ),
          ),
          ListTile(
            key: const Key('statsView_activeTodos_listTile'),
            leading: const Icon(Icons.radio_button_unchecked_rounded),
            title: Text(statsActiveTodoCountLabel),
            trailing: Text(
              '2',
              style: textTheme.headlineSmall,
            ),
          ),
        ],
      ),
    );
  }
}
