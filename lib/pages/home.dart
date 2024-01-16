import 'package:beginner/components/dialog_box.dart';
import 'package:beginner/components/todo_tile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final _controller = TextEditingController();

  // list of tasks
  List todos = [
    ["make a homework", false],
    ["visit an office", true]
  ];

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      todos[index][1] = !todos[index][1];
    });
  }

  void saveNewTask(){
    setState(() {
      todos.add([_controller.text, false]);
    });
    Navigator.of(context).pop();
  }

  void createNewTask(){
    showDialog(
        context: context,
        builder: (context) {
          return DialogBox(
            controller: _controller,
            onSave: saveNewTask,
            onCancel: () => Navigator.of(context).pop(),
          );
        });
  }

  void removeTask(int index){
    setState(() {
      todos.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: const Text("TO DO"),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => createNewTask(),
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ToDoItem(
            taskName: todos[index][0],
            taskCompleted: todos[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
            onRemove: (context) => removeTask,
          );
        },
      ),
    );
  }
}
