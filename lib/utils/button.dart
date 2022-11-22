// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';


class UsefulButton extends StatelessWidget {

  final text;

  const UsefulButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
          onPressed: () {},
          // ignore: sort_child_properties_last
          child:  SizedBox(
            width: 100,
            child: Text(
              text.toString(),
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20),
            ),
          ),
          style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              primary: Colors.green,
              onPrimary: Colors.white),
        );
  }
}