import 'package:flutter/material.dart';
import 'package:todo_app/todo.dart';

class Todoapp extends StatefulWidget {
  const Todoapp({Key? key}) : super(key: key);

  @override
  State<Todoapp> createState() {
    return _TodoAppState();
  }
}

class _TodoAppState extends State<Todoapp> {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo App'),
        actions: [
          IconButton(
            onPressed: () {
              _showAddTodoDialog(context);
            },
            icon: const Icon(Icons.add),
          )
        ],
      ),
    );
  }

  void _showAddTodoDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add Todo'),
          content: Column(
            children: [
              TextField(
                controller: _titleController,
                decoration: InputDecoration(labelText: 'Title'),
                maxLength: 50,
              ),
              TextField(
                controller: _descriptionController,
                decoration: InputDecoration(labelText: 'Description'),
                autocorrect: true,
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                String title = _titleController.text;
                String description = _descriptionController.text;
                Navigator.of(context).pop();
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }
}
