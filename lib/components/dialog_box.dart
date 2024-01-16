import 'package:beginner/components/button.dart';
import 'package:flutter/material.dart';

@immutable
class DialogBox extends StatelessWidget {

  TextEditingController controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({super.key, required this.controller, required this.onSave, required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blue[200],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  hintText: "Add a new task.."),
            ),
            Row(
              children: [
                // save btn
                ActionButton(title: "Save", onPressed: onSave),
                const SizedBox(
                  width: 50,
                ),
                ActionButton(title: "Cancel", onPressed: onCancel),
                // cancel btn
              ],
            )
          ],
        ),
      ),
    );
  }
}
