import 'package:flutter/material.dart';

class TodoListPage extends StatefulWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  final TextEditingController itensController = TextEditingController();

  List<String> tarefas = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Formulário'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 70,
            right: 70,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: itensController,
                decoration: const InputDecoration(
                  hintText: 'Itens da Lista de Tarefas',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              // ignore: prefer_const_constructors
              ElevatedButton(
                onPressed: () {
                  String text = itensController.text;
                  tarefas.add(text);
                  clearlista();
                  setState(() {
                    tarefas.add(text);
                    clearlista();
                    Navigator.of(context).pop('/Tela1');
                  });
                },
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Salvar',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void clearlista() {
    itensController.clear();
  }

  Widget listFormulario() {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: [
        for (String tarefa in tarefas)
          ListTile(
            title: Text(tarefa),
          )
      ],
    );
  }
}
