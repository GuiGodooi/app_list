import 'package:flutter/material.dart';
import 'package:app_list_todo/page2.dart';

class HomePageList extends StatefulWidget {
  const HomePageList({Key? key}) : super(key: key);

  @override
  State<HomePageList> createState() => _HomePageListState();
}

class _HomePageListState extends State<HomePageList> {
  List<String> tarefas = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Lista de Tarefa',
        ),
      ),
      body: Center(
        child: Column(
          children: [
            ListView(
              shrinkWrap: true,
              children: [],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/tela2');
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
