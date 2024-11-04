import 'package:flutter/material.dart';

class GoScreen extends StatefulWidget {
  const GoScreen({super.key});

  @override
  GoScreenState createState() => GoScreenState();
}

class GoScreenState extends State<GoScreen> {
  String displayText = "Go";

  Future<void> newText() async {
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      displayText = "Go Go Go!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Go Screen, aufgabe 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              displayText,
              style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: newText,
              child: const Text('Klick hier!'),
            ),
          ],
        ),
      ),
    );
  }
}
