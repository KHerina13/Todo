import 'package:flutter/material.dart';

class TodoListTile extends StatelessWidget {
  const TodoListTile({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final captionColor = theme.textTheme.bodySmall?.color;

    return ListTile(
      onTap: () {},
      title: Text(
        "Hello",
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: captionColor,
          decoration: TextDecoration.lineThrough,
        ),
      ),
      subtitle: Text(
        "Welcome",
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      leading: Checkbox(
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        value: true,
        onChanged: (val) {},
      ),
      trailing: const Icon(Icons.chevron_right),
    );
  }
}
