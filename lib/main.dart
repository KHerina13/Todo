import 'package:flutter/material.dart';

import 'View/Screen/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Todo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            color: Color.fromARGB(255, 16, 46, 59),
          ),
          colorScheme: ColorScheme.fromSeed(
            brightness: Brightness.dark,
            seedColor: const Color(0xFF13B9FF),
          ),
          snackBarTheme: const SnackBarThemeData(
            behavior: SnackBarBehavior.floating,
          ),
          useMaterial3: false,
        ),
        home: HomeScreen());
  }
}
