import 'package:flutter/material.dart';
import 'package:todo/View/Screen/EditTodo_screen.dart';
import 'package:todo/View/Screen/State_screen.dart';
import 'package:todo/View/Screen/TodoOverView_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedTabIndex = 0;

  void _onTabSelected(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedTabIndex,
        children: const [
          TodoOverViewScreen(),
          StateScreen(),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => EditTodoScreen()));
        },
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () => _onTabSelected(0),
              icon: const Icon(Icons.list_rounded),
              iconSize: 32,
            ),
            IconButton(
              onPressed: () => _onTabSelected(1),
              icon: const Icon(Icons.show_chart_rounded),
              iconSize: 32,
            )
          ],
        ),
      ),
    );
  }
}
