import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  const MyTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
        color: Colors.white,
      ),
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
          labelText: hintText,
          labelStyle: const TextStyle(color: Colors.white),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          suffixIcon: IconButton(icon: const Icon(Icons.search), onPressed: () {  },color: const Color.fromRGBO(193, 254, 113, 1),),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Color(0xff0C1316)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Color.fromRGBO(193, 254, 113, 1)),
          ),
          fillColor: const Color.fromARGB(255, 22, 22, 22),
          filled: true,
          hintText: "Type",
          hintStyle: const TextStyle(color: Colors.grey)),
    );
  }
}