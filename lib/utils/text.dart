import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Text(
      "S'identifier au compte Pro",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.blue),
    );
  }
}