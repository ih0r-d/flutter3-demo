import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  String _getCounterString() {
    return _counter.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter app"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("You pushed the button many times :"),
            Text(
              // _counter.toString(),
              _getCounterString(),
              style: const TextStyle(fontSize: 34),
            ),
            ElevatedButton(
                onPressed: _incrementCounter, child: const Text("Increment!"))
          ],
        ),
      ),
    );
  }
}
