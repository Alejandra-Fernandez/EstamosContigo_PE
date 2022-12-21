import 'package:flutter/material.dart';

class Activities extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TodoListPage(),
    );
  }
}

class TodoListPage extends StatefulWidget {
  const TodoListPage({
    Key? key,
  }) : super(key: key);

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  late List<Todo> _todos;
  @override
  void initState() {
    _todos = [
      Todo('Caminar'),
      Todo('Escuchar música'),
      Todo('Mirar tv'),
      Todo('Estudiar'),
      Todo('Trabajar'),
      Todo('Cocinar'),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Actividades')),
      body: ListView.builder(
        itemCount: _todos.length,
        itemBuilder: (context, index) => ListTile(
          leading: Checkbox(
              value: _todos[index].done,
              onChanged: (checked) {
                setState(() {
                  _todos[index].done = checked!;
                });
              }),
          title: Text(_todos[index].what),
        ),
      ),
    );
  }
}

class Todo {
  String what;
  bool done;
  Todo(this.what) : done = false;
}