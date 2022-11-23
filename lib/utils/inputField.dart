// ignore_for_file: file_names, sort_child_properties_last

import 'package:find_me/utils/button.dart';
import 'package:flutter/material.dart';

class InputFiled extends StatelessWidget {
  const InputFiled({super.key});

  @override
  Widget build(BuildContext context) {

    final identifiant = TextEditingController();
    final password = TextEditingController();
    return Column(
      children:  [
        TextField(
          controller: identifiant,
          style: const TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          decoration: const InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 4)
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)
            ), 
            labelText: 'Identifiant',
            labelStyle:
                TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 15,),
        TextField(
          controller: password,
          style: const TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          obscureText: true,
          decoration: const InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 4)
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)
            ),
            labelText: 'Mot de passe',
            labelStyle:
                TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 100,),

        // boutton de validation
        const UsefulButton(btnText: 'valider')
      ],
    );
  }
}
