import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  final Widget page;
  const MyButton({super.key, required this.page});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  // ignore: recursive_getters
  get page => page;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => page),
                );
              },
              child: const Text("Tap me"),
              );
  }
  
}