import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 2,
          ),
          shape: BoxShape.circle),
      child: const Icon(
        Icons.person,
        color: Colors.grey,
        size: 150,
      ),
    );
  }
}
