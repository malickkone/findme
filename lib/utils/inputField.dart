// ignore_for_file: file_names, sort_child_properties_last

import 'package:find_me/utils/button.dart';
import 'package:flutter/material.dart';

class InputFiled extends StatelessWidget {
  const InputFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        TextField(
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          decoration: InputDecoration(
            labelText: 'Identifiant',
            labelStyle:
                TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 15,),
        TextField(
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Mot de passe',
            labelStyle:
                TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 100,),
        UsefulButton(text: 'valider')
      ],
    );
  }
}
