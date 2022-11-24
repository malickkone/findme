// ignore_for_file: prefer_typing_uninitialized_variables, use_build_context_synchronously
import 'package:flutter/material.dart';


class UsefulButton extends StatelessWidget {

  final btnText;
  final void Function()? function;

  const UsefulButton({super.key, required this.btnText, this.function});

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
           onPressed: function,
          // ignore: sort_child_properties_last
          child:  SizedBox(
            width: 100,
            child: Text(
              btnText.toString(),
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