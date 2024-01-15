import 'package:flutter/material.dart';

class ToDoScreen extends StatefulWidget {
  const ToDoScreen({super.key});

  @override
  State<ToDoScreen> createState() => _ToDoScreenState();
}

class _ToDoScreenState extends State<ToDoScreen> {
  //text editing controller to get access to what the user typed

  TextEditingController textEditingController = TextEditingController();

  String greetingMsg = "";

  void _greetUser() {
    // print(textEditingController.text);
    setState(() {
      greetingMsg = "Hello, ${textEditingController.text}";
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(greetingMsg),
              TextField(
                controller: textEditingController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Type your name..."
                ),
              ),
              ElevatedButton(onPressed: _greetUser, child: Text("Tap"))
            ],
          ),
        ),
      ),
    );
  }


}
