import 'package:app_list_todo/page1.dart';
import 'package:app_list_todo/page2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/tela1': (context) => const HomePageList(),
        '/tela2': (context) => const TodoListPage(),
      },
      home: const HomePageList(),
    );
  }
}
