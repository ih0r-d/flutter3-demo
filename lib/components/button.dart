import 'package:flutter/material.dart';

@immutable
class ActionButton extends StatelessWidget {
  String title;
  VoidCallback onPressed;

  ActionButton({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Theme.of(context).primaryColor,
      child: Text(title),
    );
  }
}
